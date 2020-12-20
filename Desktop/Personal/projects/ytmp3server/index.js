const express = require('express');
const ytdl = require('ytdl-core');
const ytsr = require('ytsr');
const fs = require('fs');
const app = express();
const path = require('path');
const ffmpeg = require('fluent-ffmpeg');
const aesutil = require('./aesutil');

function slugify(text) {
  var trMap = {
    'çÇ': 'c',
    'ğĞ': 'g',
    'şŞ': 's',
    'üÜ': 'u',
    'ıİ': 'i',
    'öÖ': 'o'
  };
  for (var key in trMap) {
    text = text.replace(new RegExp('[' + key + ']', 'g'), trMap[key]);
  }
  return text.replace(/[^-a-zA-Z0-9\s]+/ig, '') // remove non-alphanumeric chars
    .replace(/\s/gi, "-") // convert spaces to dashes
    .replace(/[-]+/gi, "-") // trim repeated dashes
    .toLowerCase();

}

app.get('/', function (req, res) {
  res.sendFile('/var/www/html/index.html');
});

app.get('/get-mp3/:videoId/:filename?', function (req, res) {
  const videoId = req.params.videoId.includes(':') ? aesutil.decrypt(req.params.videoId) : req.params.videoId;
  const stream = ytdl(videoId, { quality: 'highestaudio' });
  const start = Date.now();

  ytdl.getInfo(videoId)
    .then(function (info) {
      let title = videoId;
      if (info.hasOwnProperty('videoDetails') && info.videoDetails.hasOwnProperty('title')) {
        title = info.videoDetails.title;
      }
      const file_path = `mp3s/${title}.mp3`;

      ffmpeg(stream)
        .audioBitrate(128)
        .save(file_path)
        .on('end', () => {
          console.log(`\ndone, thanks - ${(Date.now() - start) / 1000}s`);
          var fileReadStream = fs.createReadStream(file_path);
          var fileInfo = fs.statSync(file_path);
          res.setHeader('Content-Length', fileInfo.size);
          res.setHeader('Content-Type', 'audio/mp3');
          res.setHeader('Content-Disposition', 'inline; filename=' + (title) + '.mp3');
          fileReadStream.pipe(res);
        });
    });
});

app.get('/get-info/:videoId', function (req, res) {
  const videoId = req.params.videoId.includes(':') ? aesutil.decrypt(req.params.videoId) : req.params.videoId;

  ytdl.getInfo(videoId)
    .then(function (info) {
      const thumbnailsCount = info.videoDetails.thumbnails.length;
      const videoInfo = {
        thumbnails: {
          "maxres": {
            url: info.videoDetails.thumbnails[thumbnailsCount - 1].url
          },
          "default": {
            url: info.videoDetails.thumbnails[0].url
          }
        },
        channelTitle: info.videoDetails.author.name,
        title: (info.videoDetails.title),
        id: videoId,
      };

      res.send({
        "items": [{
          "snippet": videoInfo
        }]
      });
    });
});

app.get('/delete/:videoName', function (req, res) {
  var filename = path.join('/root/ytmp3server/mp3s', `${req.params.videoName}|mp3`);
  filename = filename.replace(/\./g, '').replace('|', '.');

  if (fs.existsSync(filename)) {
    fs.unlinkSync(filename);
  }
  res.end();
});

app.get('/get-search/:queryString', async function (req, res) {
  let response = await ytsr(req.params.queryString);
  response.items = response.items
    .filter((_info) => _info.type == 'video' && _info.isLive == false)
    .map((_info) => {
      let thumbnail = 'http://placehold.it/200x200?text='+_info.title;
      if (_info.hasOwnProperty('thumbnails') && _info.thumbnails.length >= 1) {
        thumbnail = _info.thumbnails[0].url;
      }

      return {
        id: _info.id,
        title: _info.title,
        thumbnail,
        channelTitle: _info.author.name,
        duration: _info.duration
      };
    });
  res.send(response.items);
});



function formatName(str) {
  str = slugify(
    str
      .replace(/ *\([^)]*\) */g, "")
      .replace(/ *\\[[^\]]*\) */g, ""))
    .replace('official', '')
    .replace('music', '')
    .replace('video', '');
  return str;
}

function shuffle(array) {
  return array.sort(() => Math.random() - 0.5);
}

const port = process.env.PORT ? process.env.PORT : 8080;

app.listen(port, function () {
  console.log('http://127.0.0.1:' + port);
});

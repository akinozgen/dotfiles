#!/bin/bash
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

add_alias() {
	echo "\nalias $2=$1" >> ~/.local/aliases.sh
	source ~/.local/aliases.sh
}

togb() {
  echo $(echo $1 | awk '{print /1000/1000/1000 " GB "}')
}

lastxfiles() {
  find . -type f -printf '%T@ %p\n' | sort -n | tail -$1 | awk '{print $2, $3, $4, $5, $6, $7, $8}' | tac
}

ytvideo() {
	youtube-dl --output "%(uploader)s|%(title)s.%(ext)s" "$1"
}

ytmp3() {
	youtube-dl --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s" "$1"
}

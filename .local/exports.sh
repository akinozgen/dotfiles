#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
export ANDROID_HOME="/home/akinozgen/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/home/akinozgen/Android/Sdk/build-tools/29.0.1:$JAVA_HOME/bin:$HOME/Android/Sdk/build-tools/29.0.2/:${HOME}/.local/bin/:/home/akinozgen/Android/flutter/bin:$HOME/.config/composer/vendor/bin"
export NVM_DIR="$HOME/.nvm"
export ZSH="/home/akinozgen/.oh-my-zsh"
export ZSH_THEME="akinozgen"
wal -i $(cat .config/nitrogen/bg-saved.cfg | grep 'file=' | sed 's/file\=//g')

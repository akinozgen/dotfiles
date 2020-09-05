#!/bin/bash
export XDG_CONFIG_HOME="$HOME/.config/"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
export ANDROID_HOME="/home/akinozgen/.config/AndroidSdk/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/home/akinozgen/Android/Sdk/build-tools/29.0.1:$JAVA_HOME/bin:$ANDROID_HOME/build-tools/29.0.2/:$HOME/.local/bin/:$HOME/.config/AndroidSdk/flutter/bin:$HOME/.config/composer/vendor/bin"
export NVM_DIR="$HOME/.nvm"
export ZSH="/home/akinozgen/.oh-my-zsh"
export ZSH_THEME="akinozgen"

export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/AndroidSdk"
export ANDROID_AVD_HOME="$XDG_DATA_HOME/android/"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"


# wal -i $(cat .config/nitrogen/bg-saved.cfg | grep 'file=' | sed 's/file\=//g')

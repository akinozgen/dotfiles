#!/bin/bash
export JAVA_HOME="/usr/lib64/jvm/java-8-openjdk/"
export ANDROID_HOME="/home/akinozgen/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/30.0.2/:$JAVA_HOME/bin:$HOME/.local/bin/:$HOME/.config/flutter/bin:$HOME/.cargo/bin"

export ANDROID_SDK_HOME="$ANDROID_HOME"
export ANDROID_AVD_HOME="$HOME/.android/"
export ANDROID_EMULATOR_HOME="$HOME/.android"
export ADB_VENDOR_KEY="$HOME/.android"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# wal -i $(cat .config/nitrogen/bg-saved.cfg | grep 'file=' | sed 's/file\=//g')
export VIRMACH=107.172.43.156
export ANDROID_SDK_ROOT=$ANDROID_HOME

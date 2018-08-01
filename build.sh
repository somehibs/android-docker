#!/usr/bin/env bash

ANDROID_SDK_TOOLS=24.4.1
mkdir build
cd build/
echo "Fetching Android SDK"
wget --continue --quiet --output-document=android-sdk.tgz https://dl.google.com/android/android-sdk_r${ANDROID_SDK_TOOLS}-linux.tgz
echo "Building Android docker image"
cp ../android Dockerfile
docker build -t android .

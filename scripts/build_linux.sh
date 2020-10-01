#!/bin/bash

export TRAVIS_SHORT_SHA1=$(eval echo $TRAVIS_COMMIT | cut -c -7)
export BUILD_FILE_NAME=eth2deposit-cli-${TRAVIS_SHORT_SHA1}-linux-amd64;
mkdir ${BUILD_FILE_NAME};
pyenv global 3.7.5;
pyinstaller --distpath ./${BUILD_FILE_NAME} ./build_configs/linux/build.spec;

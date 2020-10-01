
#!/bin/bash

export TRAVIS_SHORT_SHA1=$(eval echo $TRAVIS_COMMIT | cut -c -7)
export BUILD_FILE_NAME=eth2deposit-cli-${TRAVIS_SHORT_SHA1}-linux-amd64;
tar -zcvf ${BUILD_FILE_NAME}.tar.gz ./${BUILD_FILE_NAME};
mkdir /out
mkdir /out/artifacts;
cp ${BUILD_FILE_NAME}.tar.gz /out/artifacts;

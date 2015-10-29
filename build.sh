#!/bin/sh

TARGET_DIR="$1"
BUILD_DIR=$(mktemp -d)

set -x

echo "Downloading phantomjs..."
cd "$BUILD_DIR"
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0

echo "Building in $BUILD_DIR"
./build.sh --confirm | tee "$TARGET_DIR/build.log"

echo "Copying in $TARGET_DIR"
cp -a bin/* "$TARGET_DIR"

echo "Cleaning"
rm -fr "$BUILD_DIR"

exit 0

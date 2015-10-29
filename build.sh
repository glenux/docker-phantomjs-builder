#!/bin/sh

TARGET_DIR="$1"
BUILD_DIR="/tmp/build"

set -x

echo "Building in $BUILD_DIR"

echo "Copying in $TARGET_DIR"
touch "$TARGET_DIR/build.log"
sync
exit 0

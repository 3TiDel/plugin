#!/usr/bin/env bash

DIR=$(realpath ${0%/*})
cd $DIR
set -ex

cd i18n
bun x i18n
cd ..
build
cp -r $DIR/i18n lib/

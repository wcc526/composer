#!/usr/bin/env bash
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )"

cd $BASEDIR

cp ./electron/package.prod.json ./dist/package.json
cp ./electron/main.prod.js ./dist/main.js

./node_modules/.bin/electron-packager ./dist --overwrite --out build --icon ./electron/rabix-icon.icns --build-version "0.1.0" --appname "Rabix Editor"
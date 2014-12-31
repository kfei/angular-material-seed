#!/bin/bash

set -e

APPNAME=$1
true ${APPNAME:="myFuckingAwesomeProject"}

# Create directory structure
mkdir -p vendor config
mkdir -p directives services controllers
mkdir -p assets/{stylesheets,images}

# Set default npm packages
[ ! -f package.json ] && {
    echo "[npm] Creating package.json..."
    cat > package.json <<EOF
{
  "name": "$APPNAME",
  "devDependencies": {
    "dateformat": ">=0",
    "gulp": ">=0",
    "gulp-sync": ">=0",
    "gulp-sass": ">=0",
    "gulp-concat": ">=0",
    "gulp-rename": ">=0",
    "gulp-header": ">=0",
    "gulp-base64": ">=0",
    "gulp-angular-templatecache": ">=0",
    "gulp-usemin": "zont/gulp-usemin",
    "gulp-uglify": ">=0",
    "gulp-minify-css": ">=0",
    "gulp-minify-html": ">=0",
    "gulp-replace": ">=0",
    "gulp-connect": ">=0",
    "gulp-jasmine": ">=0",
    "gulp-karma": ">=0",
    "karma": ">=0",
    "karma-jasmine": ">=0",
    "karma-phantomjs-launcher": ">=0"
  },
  "license": "MIT",
  "homepage": "https://github.com/kfei/$APPNAME",
  "repository": {
    "type": "git",
    "url": "https://github.com/kfei/$APPNAME"
  }
}
EOF
}

# Install npm packages
echo "[npm] Installing npm packages..."
npm update && npm install --save-dev

# Create default .bowerrc
[ ! -f .bowerrc ] && {
    echo "[bower] Creating .bowerrc..."
    cat > .bowerrc <<EOF
{
  "directory": "vendor"
}
EOF
}

# Set default bower packages
[ ! -f bower.json ] && {
    echo "[bower] Creating bower.json..."
    cat > bower.json <<EOF
{
  "name": "$APPNAME",
  "version": "0.0.0",
  "dependencies": {
    "angular": "*",
    "angular-material": "*",
    "angular-translate": "*",
    "angular-local-storage": "*",
    "angular-route": "*"
  },
  "devDependencies": {
    "angular-mocks": ">=0"
  }
}
EOF
}

# Install bower packages
echo "[bower] Installing bower packages..."
bower --allow-root --config.interactive=false update
bower --allow-root --config.interactive=false install

#!/bin/bash

set -e

# TODO: Replace all hardcoded APPNAMEs
APPNAME=$1
true ${APPNAME:="myFuckingAwesomeProject"}

# Bootstrap template files
cp -a /usr/share/angular-material-seed/. /code

# Create directory structure if not exists
mkdir -p vendor config
mkdir -p directives services controllers
mkdir -p assets/{stylesheets,images}

# Install npm packages
echo "[npm] Installing npm packages..."
npm update && npm install --save-dev

# Install bower packages
echo "[bower] Installing bower packages..."
bower --allow-root --config.interactive=false update
bower --allow-root --config.interactive=false install

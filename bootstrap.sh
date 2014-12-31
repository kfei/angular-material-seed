#!/bin/bash

set -e

[ ! -d node_modules/gulp ] && {
    echo "[npm] Installing gulp packages..."
    npm update
    npm install --save-dev gulp \
                           gulp-sass \
                           gulp-minify-css \
                           gulp-minify-html
}

[ ! -d vendor/angular-material ] && {
    echo "[bower] Installing angular-material..."
    bower update
    bower --allow-root install angular-material
}

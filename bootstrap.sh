#!/bin/bash

set -e

# Create directory structure
mkdir -p vendor config directive service controller

# Install gulp packages
[ ! -d node_modules/gulp ] && {
    echo "[npm] Installing gulp packages..."
    npm update
    npm install --save-dev \
        gulp \
        gulp-sass \
        gulp-minify-css \
        gulp-minify-html
}

# Create default .bowerrc
[ ! -f .bowerrc ] && {
    echo "[bower] Creating .bowerrc..."
    cat > .bowerrc <<EOF
{
  "directory": "vendor"
}
EOF
}

# Install bower packages
[ ! -d vendor/angular-material ] && {
    echo "[bower] Installing angular-material..."
    bower --allow-root update
    bower --allow-root install angular-material
}

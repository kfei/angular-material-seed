#!/bin/bash

stat node_modules/gulp &>/dev/null || {
    echo "[npm] Installing gulp..."
    npm update && npm install --save-dev gulp
}

stat vendor/angular-material &>/dev/null || {
    echo "[bower] Installing angular-material..."
    bower update && bower --allow-root install angular-material
}

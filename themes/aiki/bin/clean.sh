#!/bin/sh

## http://stackoverflow.com/questions/242538/unix-shell-script-find-out-which-directory-the-script-file-resides
#BASE_DIR=$(dirname $0)
#echo $BASE_DIR

THE_PATH_SCRIPT=$(readlink -f "$0")
THE_PATH_BIN=$(dirname "$THE_PATH_SCRIPT") # hexo-theme-monogatari/bin
THE_PATH_BASE=$(dirname "$THE_PATH_BIN") # hexo-theme-monogatari
#echo $THE_PATH_SCRIPT
#echo $THE_PATH_BIN
#echo $THE_PATH_BASE
cd $THE_PATH_BASE # goto hexo-theme-monogatari
#pwd

THE_PATH_ASSET_VENDOR="$THE_PATH_BASE/source/asset/vendor"

rm $THE_PATH_ASSET_VENDOR -rf
echo "remove: $THE_PATH_ASSET_VENDOR"

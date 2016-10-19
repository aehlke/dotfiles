#!/usr/bin/env bash
set -e

FILE_DIR=`dirname "$(readlink -f "$0")"`
cd $FILE_DIR

mkdir -p ./dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./dein/dein-installer.sh
chmod 755 ./dein/dein-installer.sh
./dein/dein-installer.sh .

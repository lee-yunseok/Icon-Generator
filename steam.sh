#!/bin/bash
#
# Copyright (c) 2018 smallmuou <smallmuou@163.com>
# Copyright (C) 2019 Lee Yunseok <ironyunseok@protonmail.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is furnished
# to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

set -e

IN="$1"
OUT="$2"

VERSION=1.0.0

info() {
     local green="\033[1;32m"
     local normal="\033[0m"
     echo -e "[${green}INFO${normal}] $1"
}

error() {
     local red="\033[1;31m"
     local normal="\033[0m"
     echo -e "[${red}ERROR${normal}] $1"
}

usage() {
cat << EOF
VERSION: $VERSION
USAGE:
    SH IN OUT
DESCRIPTION:
    This script aim to generate steam app icons easier and simply.
    IN - The source png image preferably above 256x256 pixels.
    OUT - The destination path where the icons generate to.
    This script is depend on ImageMagick. So you must install ImageMagick first.
    https://www.imagemagick.org/
AUTHOR:
    smallmuou <smallmuou@163.com>
    Lee Yunseok <ironyunseok@protonmail.com>
LICENSE:
    This script is covered by the terms of the MIT license.
EOF
}

# Check ImageMagick
command -v convert >/dev/null 2>&1 || { error >&2 "The ImageMagick is not installed. Please use brew to install it first."; exit -1; }

# Check param
if [ $# != 2 ];then
    usage
    exit -1
fi

# Check dst path whether exist.
if [ ! -d "$OUT" ];then
    mkdir -p "$OUT"
fi
if [ ! -d "$OUT\steam" ];then
    mkdir -p "$OUT\steam"
fi

info 'Generate linux-16.png ...'
convert "$IN" -resize 16x16 "$OUT\steam\linux-16.png"
info 'Generate linux-24.png ...'
convert "$IN" -resize 24x24 "$OUT\steam\linux-24.png"
info 'Generate linux-32.png ...'
convert "$IN" -resize 32x32 "$OUT\steam\linux-32.png"
info 'Generate linux-64.png ...'
convert "$IN" -resize 64x64 "$OUT\steam\linux-64.png"
info 'Generate linux-96.png ...'
convert "$IN" -resize 96x96 "$OUT\steam\linux-96.png"
info 'Generate linux-256.png ...'
convert "$IN" -resize 256x256 "$OUT\steam\linux-256.png"
info 'Generate mac-32.icns ...'
convert "$OUT\steam\linux-32.png" "$OUT\steam\mac-32.icns"
info 'Generate windows-32.ico ...'
convert "$OUT\steam\linux-32.png" -define icon "$OUT\steam\windows-32.ico"

info 'Generate Done.'
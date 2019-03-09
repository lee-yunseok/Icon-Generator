#!/bin/bash
#
# Copyright (C) 2019 Lee Yunseok <thericke00@gmail.com>
# Copyright (c) 2018 smallmuou <smallmuou@163.com>
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
    This script aim to generate iOS.iconset app icons easier and simply.
    IN - The source png image must be 1024x1024 pixels.
    OUT - The destination path where the icons generate to.
    This script is depend on ImageMagick. So you must install ImageMagick first.
    https://www.imagemagick.org/
AUTHOR:
    Lee Yunseok <thericke00@gmail.com>
    smallmuou <smallmuou@163.com>
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
if [ ! -d "$OUT\iOS.iconset" ];then
    mkdir -p "$OUT\iOS.iconset"
fi

# iOS.iconset sizes refer to https://developer.apple.com/design/human-interface-guidelines/iOS.iconset/icons-and-images/app-icon/
# macos sizes refer to https://developer.apple.com/design/human-interface-guidelines/macos/icons-and-images/app-icon/
# watchos sizes refer to https://developer.apple.com/design/human-interface-guidelines/watchos/icons-and-images/home-screen-icons/

info 'Generate Icon-16.png ...'
convert "$IN" -resize 16x16 "$OUT\iOS.iconset\Icon-16.png"
info 'Generate Icon-16@2x.png ...'
convert "$IN" -resize 32x32 "$OUT\iOS.iconset\Icon-16@2x.png"
info 'Generate Icon-32.png ...'
cp "$OUT\iOS.iconset\Icon-16@2x.png" "$OUT\iOS.iconset\Icon-32.png"
info 'Generate Icon-32@2x.png ...'
convert "$IN" -resize 64x64 "$OUT\iOS.iconset\Icon-32@2x.png"
info 'Generate Icon-128.png ...'
convert "$IN" -resize 128x128 "$OUT\iOS.iconset\Icon-128.png"
info 'Generate Icon-128@2x.png ...'
convert "$IN" -resize 256x256 "$OUT\iOS.iconset\Icon-128@2x.png"
info 'Generate Icon-256.png ...'
cp "$OUT\iOS.iconset\Icon-128@2x.png" "$OUT\iOS.iconset\Icon-256.png"
info 'Generate Icon-256@2x.png ...'
convert "$IN" -resize 512x512 "$OUT\iOS.iconset\Icon-256@2x.png"
info 'Generate Icon-512.png ...'
cp "$OUT\iOS.iconset\Icon-256@2x.png" "$OUT\iOS.iconset\Icon-512.png"
info 'Generate Icon-512@2x.png ...'
cp "$IN" "$OUT\iOS.iconset\Icon-512@2x.png"
info 'Generate Icon-20.png ...'
convert "$IN" -resize 20x20 "$OUT\iOS.iconset\Icon-20.png"
info 'Generate Icon-20@2x.png ...'
convert "$IN" -resize 40x40 "$OUT\iOS.iconset\Icon-20@2x.png"
info 'Generate Icon-20@3x.png ...'
convert "$IN" -resize 60x60 "$OUT\iOS.iconset\Icon-20@3x.png"
info 'Generate Icon-29.png ...'
convert "$IN" -resize 29x29 "$OUT\iOS.iconset\Icon-29.png"
info 'Generate Icon-29@2x.png ...'
convert "$IN" -resize 58x58 "$OUT\iOS.iconset\Icon-29@2x.png"
info 'Generate Icon-29@3x.png ...'
convert "$IN" -resize 87x87 "$OUT\iOS.iconset\Icon-29@3x.png"
info 'Generate Icon-40.png ...'
cp "$OUT\iOS.iconset\Icon-20@2x.png" "$OUT\iOS.iconset\Icon-40.png"
info 'Generate Icon-40@2x.png ...'
convert "$IN" -resize 80x80 "$OUT\iOS.iconset\Icon-40@2x.png"
info 'Generate Icon-40@3x.png ...'
convert "$IN" -resize 120x120 "$OUT\iOS.iconset\Icon-40@3x.png"
info 'Generate Icon-60@2x.png ...'
cp "$OUT\iOS.iconset\Icon-40@3x.png" "$OUT\iOS.iconset\Icon-60@2x.png"
info 'Generate Icon-60@3x.png ...'
convert "$IN" -resize 180x180 "$OUT\iOS.iconset\Icon-60@3x.png"
info 'Generate Icon-76.png ...'
convert "$IN" -resize 76x76 "$OUT\iOS.iconset\Icon-76.png"
info 'Generate Icon-76@2x.png ...'
convert "$IN" -resize 152x152 "$OUT\iOS.iconset\Icon-76@2x.png"
info 'Generate Icon-83.5@2x.png ...'
convert "$IN" -resize 167x167 "$OUT\iOS.iconset\Icon-83.5@2x.png"
info 'Generate Icon-1024.png ...'
cp "$IN" "$OUT\iOS.iconset\Icon-1024.png"
info 'Generate Icon-24@2x.png ...'
convert "$IN" -resize 48x48 "$OUT\iOS.iconset\Icon-24@2x.png"
info 'Generate Icon-27.5@2x.png ...'
convert "$IN" -resize 55x55 "$OUT\iOS.iconset\Icon-27.5@2x.png"
info 'Generate Icon-86@2x.png ...'
convert "$IN" -resize 172x172 "$OUT\iOS.iconset\Icon-86@2x.png"
info 'Generate Icon-98@2x.png ...'
convert "$IN" -resize 196x196 "$OUT\iOS.iconset\Icon-98@2x.png"
info 'Generate Icon-108@2x.png ...'
convert "$IN" -resize 216x216 "$OUT\iOS.iconset\Icon-108@2x.png"
info 'Generate Icon-44@2x.png ...'
convert "$IN" -resize 88x88 "$OUT\iOS.iconset\Icon-44@2x.png"
info 'Generate Icon-50@2x.png ...'
convert "$IN" -resize 100x100 "$OUT\iOS.iconset\Icon-50@2x.png"
info 'Generate iTunesArtwork.png ...'
convert "$IN" -resize 512x512 "$OUT\iOS.iconset\iTunesArtwork.png"
info 'Generate iTunesArtwork@2x.png ...'
cp "$IN" "$OUT\iOS.iconset\iTunesArtwork@2x.png"

#iconutil -c icns "$OUT\iOS.iconset"

info 'Generate Done.'
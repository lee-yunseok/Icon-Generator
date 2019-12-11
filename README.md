# ICON GENERATOR FOR GAME DEVELOPERS
[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/H2H119QQ8) [ ![GitHub commits](https://img.shields.io/github/commits-since/lee-yunseok/Icon-Generator-for-Game-Developers/6804852.svg?style=popout&logo=github)](https://github.com/lee-yunseok/Icon-Generator-for-Game-Developers/commits/master) [![License](https://img.shields.io/github/license/lee-yunseok/Icon-Generator-for-Game-Developers.svg?style=popout&logo=github)](https://github.com/lee-yunseok/Icon-Generator-for-Game-Developers#license)

## Description
Shell scripts to generate many app icons more easier for developers. This is a [cloned repository](https://github.com/smallmuou/ios-icon-generator), restored the old **ImageMagick** version and added scripts for game developers.

```
VERSION: 1.0.0
USAGE:
    SH INPUT OUTPUT
EXAMPLE:
    all.sh icon.png icons
DESCRIPTION:
    This scripts aim to generate many app icons easier and simply.
    INPUT - The source png image must be 1024x1024 pixels.
    OUTPUT - The destination path where the icons generate to.
AUTHOR:
    smallmuou <smallmuou@163.com>
    Lee Yunseok <ironyunseok@protonmail.com>
```

### Supported Icons
* Steam(client images) - **steam.sh**
* Steam(achievement and trading card images) - **items.sh**
* Humble Store(widget) - **humble.sh**
* App Store App(iOS/macOS/watchOS) - **ios.sh**
* Android App(not adaptive icon) - **android.sh**
* Windows Ico - **ico.sh**
* macOS Icns - **icns.sh**
* Website favicon - included in **ico.sh**
* Safari extension - included in **icns.sh**

### Usage

* Install [ImageMagick](https://www.imagemagick.org/) on your device.
* clone this repository:
  ```
  git clone https://github.com/lee-yunseok/Icon-Generator-for-Game-Developers
  ```
* Prepare **just one image** for use as your all icon. **The image file must be 1024x1024 pixels png format.**
* Run the shell-script(.sh) you want. If you want all icons, just run _all.sh_. For example:
  ```
  all.sh icon.png icons
  ```
* If you want to **iOS iconset** in your Mac, before run the script, open _**ios.sh**_ or _**all.sh**_ and **remove '#'** in the line below.
  ```
  #iconutil -c icns "$OUT\iOS.iconset"
  ```
* Note that the script of Steam achievements and trading cards are not included in _all.sh_ because it requires image set. After preparing a set of images **above 256x256 pixels**-It does not matter if it has a border- you have to use _**items.sh**_ for it.
  ```
  items.sh icons icons
  ```
* Use the generated icons. For Steam client images, open _OUTPUT\steam_ folder, **compress _linux-*.png_ into a zip file**.

#### Troubleshooting Guide
* Permission denied
  ```
  chmod 777 <FILENAME>.sh
  ```
* If you have any other problem or request, just submit an [issue](https://github.com/lee-yunseok/Icon-Generator-for-Game-Developers/issues).

#### License
Icon Generator for Game Developers is covered by the terms of the MIT license.

```
MIT License

Copyright (c) 2018 smallmuou <smallmuou@163.com>
Copyright (c) 2019 Lee Yunseok <ironyunseok@protonmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
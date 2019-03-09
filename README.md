# ICON GENERATOR
[![Donate Me](https://img.shields.io/badge/Built%20by-Lee%20Yunseok-purple.svg?style=popout&logo=paypal&maxAge=999999)](https://paypal.me/leeyunseok) [![Become a Patron](https://img.shields.io/badge/Become%20a-Patron-f96854.svg?style=popout&logo=Patreon&maxAge=999999)](https://www.patreon.com/bePatron?u=347743) [ ![GitHub commits](https://img.shields.io/github/commits-since/lee-yunseok/Icon-Generator/6804852.svg?style=popout&logo=github)](https://github.com/lee-yunseok/Icon-Generator/commits/master) [![License](https://img.shields.io/github/license/lee-yunseok/Icon-Generator.svg?style=popout&logo=github)](https://github.com/lee-yunseok/Icon-Generator#license)

## Description
Shell scripts to generate many app icons more easier for developers. This [cloned repository](https://github.com/smallmuou/ios-icon-generator) has added scripts to restore old **ImageMagick** version and create icons for various platforms.

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
    Lee Yunseok <thericke00@gmail.com>
    smallmuou <smallmuou@163.com>
```
### Supported Icons
* Steam(client images) - **steam.sh**
* Humble Store(widget) - **humble.sh**
* App Store App(iOS/macOS/watchOS) - **ios.sh**
* Android App(not adaptive icon) - **android.sh**
* Windows ICO - **ico.sh**
* macOS ICNS - **icns.sh**
* Website favicon - **included in ico.sh**
* Safari extention - **included in icns.sh**
### Usage

* Install [ImageMagick](https://www.imagemagick.org/) on your device.
* clone this repository:
  * git clone https://github.com/lee-yunseok/Icon-Generator
* Prepare **just one image** for use as your all icon. **The image file must be 1024x1024 pixels png format.**
* Run the shell-script(.sh) you want. If you want all platforms, just run all.sh. For example:
  ```
  all.sh icon.png icons
  ```
* If you want to gererate **ios iconset** in your macOS, before run the script, just **remove '#'** before **iconutil -c icns "$OUT\iOS.iconset"** in the **ios.sh** or **all.sh**.
* Use the generated icon. If you run script for Steam, compress linux-*.png into a zip file.

### License
This script is covered by the terms of the MIT license.
```
MIT License

Copyright (c) 2019 Lee Yunseok <thericke00@gmail.com>
Copyright (c) 2018 smallmuou <smallmuou@163.com>

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
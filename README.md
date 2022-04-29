# Introduction
Simple native client wrappers for 5e Tools website on Linux, macOS, and Windows. The wrapper is Chromium, so uses the same underlying engines as the Google Chrome browser. Therefore, all of the features you know and love in 5e Tools should continue working, but as an individual container that doesn't require installing Chrome or Firefox as a dependency first.

# Download
Simply download the appropriate zip file from [here](https://github.com/joshjhall/5etools-client/tree/main/release).

## Windows
If you're uncertain what kind of processor you have, the x64 version is the most common (both Intel and AMD).

## Linux
These should work on most common variants of Linux.

## Mac
If you're uncertain what kind of process you have, the x64 version is the most common unless you've bought your computer after 2020/2021. The M1x and later chips will perform better with the arm64 version.

# Build
The build process assumes [nativefier](https://github.com/nativefier/nativefier) and appropriate cross-platform libraries such as [Wine](https://wiki.winehq.org) are installed.

TODO: This should be refactored to use docker containers for more consistent build processes across platforms and situations.

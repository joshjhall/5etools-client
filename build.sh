#!/bin/zsh

# Simple script to build Natifier containers

# Version based upon date of build
VER=$(date +"%Y").$(date +"%m").$(date +"%d")

# Change working directory to where the script is located
cd "$(dirname "$0")"

######################

# Remove old Linux builds
rm -rf "linux/*"

# Generate updated Linux builds
nativefier https://5e.tools/index.html \
  "linux" \
  --name "5e Tools" \
  --app-version $VER \
  -p linux \
  -a arm64 \
  --icon "icons/dnd.png"

nativefier https://5e.tools/index.html \
  "linux" \
  --name "5e Tools" \
  --app-version $VER \
  -p linux \
  -a x64 \
  --icon "icons/dnd.png"

######################

# Remove the old MacOS builds
rm -rf "macos/*"

# Generate updated MacOS builds
nativefier https://5e.tools/index.html \
  "macos" \
  --name "5e Tools" \
  --app-version $VER \
  -p mac \
  -a arm64 \
  --icon "icons/dnd.icns"

nativefier https://5e.tools/index.html \
  "macos" \
  --name "5e Tools" \
  --app-version $VER \
  -p mac \
  -a x64 \
  --icon "icons/dnd.icns"

######################

# Remove old Windows builds
rm -rf "windows/*"

# Generate updated Windows builds
nativefier https://5e.tools/index.html \
  "windows" \
  --name "5e Tools" \
  --app-version $VER \
  -p windows \
  -a arm64 \
  --icon "icons/dnd.ico"

nativefier https://5e.tools/index.html \
  "windows" \
  --name "5e Tools" \
  --app-version $VER \
  -p windows \
  -a x64 \
  --icon "icons/dnd.ico"

# Remove old releases
rm release/*.zip

# Package release zip files
zip -r release/linux-arm64.zip linux/5eTools-linux-arm64/
zip -r release/linux-x64.zip linux/5eTools-linux-x64/
zip -r release/macos-arm64.zip macos/5e\ Tools-darwin-arm64/
zip -r release/macos-x64.zip macos/5e\ Tools-darwin-x64/
zip -r release/windows-arm64.zip windows/5e\ Tools-win32-arm64/
zip -r release/windows-x64.zip windows/5e\ Tools-win32-x64/

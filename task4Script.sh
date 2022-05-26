#!/bin/bash

pathToScript="/Users/karlavalencia/Documents/com.jamf.openresources.task4.plist"
defaults write "$pathToScript" ProgramAguments -array "usr/bin/open" "https://jamf.it/courseresources"

defaults  write "$pathToScript" StartInterval 7200
defaults  write "$pathToScript" RunAtLoad -boolean true
plutil  -convert xml1 $pathToScript
chmod  644 $pathToScript
sudo chown  root:wheel $pathToScript


#!/bin/bash

path_to_script="/Users/karlavalencia/Documents/Scripts/Framework/deamons_agents";

defaults write "$path_to_script" Label "com.jamf.lesson4task1";

defaults write "$path_to_script" ProgramArguments -array "/usr/bin/open" "https://jamf.it/courseresources";

defaults write "$path_to_script" StartInterval 72000;
defaults write "$path_to_script" RunAtLoad -boolean true;

plutil -convert xml2 "$path_to_script";

# put it into the proper place in area
# chmod 644 "$path_to_script";
# chown root:wheel "$path_to_script";
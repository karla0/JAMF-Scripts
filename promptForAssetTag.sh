#!/bin/bash

aTag=$( osascript << EOF
    tell application "System Events" to text returned of (display dialog "Please enter your asset tag" default answer "JS###" buttons {"OK"} default button 1)
EOF
    );

echo "$aTag";

sudo jamf recon -assetTag "$aTag";
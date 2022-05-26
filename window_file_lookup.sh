#!/bin/bash

jamfHelperPath="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper"
iconPath="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/AlertNoteIcon.icns"
filePath="$4"
title="$5";

if [[ -e $filePath ]]; then
	
	jDescription="File $filePath was found!"
else
	jDescription="File $filePath was not found!"
	
fi

"$jamfHelperPath" -windowType utility -title "$title" -description "$jDescription" -icon "$iconPath" -button1 "OK"
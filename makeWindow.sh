#!/bin/bash

jamfHelperPath="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper"
iconPath="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/AlertStopIcon.icns"

jTitle="$4"
jDescription="$5"
# replace the descriptiona and the title below
jChoice=$( "$jamfHelperPath" -windowType utility -title "Important Message" -description "We need you to update your inventory! Are you ready to do this now?" -icon "$iconPath" -button1 "Yes" -button2 "No" -defaultButton 1 )

if [[ "$jChoice" == "0" ]]; then
	sudo jamf recon 
else
	echo  "Update deferred"

fi
# test expressions
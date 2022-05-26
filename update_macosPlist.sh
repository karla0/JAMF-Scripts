#!/bin/bash
# grabs the users current os version


# compare a plist to the current os
currentOS=$(sw_vers -productVersion)
pathToPlist="/Users/Shared/Resources/plists0s.plist"


echo "$currentOS"

# Read
plistOs=$( defaults read "$pathToPlist" osVersion )
echo "$plistOs";

#if [[ "$currentOS" -eq "$plistOS" ]]
if [[ "$currentOS" != "$plistOs" ]]; then
	defaults write "$pathToPlist" osVersion "$currentOS"
else
	echo "OS is set."
fi

curl -sku $uname:$password -H "accept: application/xml" "$jURL/JSSResource/computers/serialnumber/
# take the whole things, and turn it into a here document"


# *********
daemonPath="<PATH>.plist"
scriptPath="<PATH>.sh"


if [[ -e "$daemonPath" ]]; then
	sudo launchctl bootout system "$daemonPath"
	rm -f "$daemonPath"
fi
# dont forget to escape the backslashes
tee > "$scriptPath" << VAR
currentOS=\$(sw_vers -productVersion)
pathToPlist="Users/Shared/plist0s.plist
plistOS=$(defaults read "$pathToPlist" osVersion)
jURL="htt"
VAR

chmod 644 "$scriptPath"
chown root:wheel "$scriptPath"

tee > "$daemonPath" << VAR
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>CUSTOM_LABEL_HERE</string>
	<key>ProgramArguments</key>
	<array>
		<string>/bin/bash</string>
		<string>/PATH/TO/FILE</string>
	</array>
	<key>RunAtLoad</key>
	<true/>
	<key>StartInterval</key>
	<integer>NUMBER_OF_SECONDS</integer>
</dict>
</plist>

VAR

chmod 644 "$daemonPath"
chown root:wheel "$daemonPath"

sudo /bin/launchctl bootstrap system "$daemonPath"
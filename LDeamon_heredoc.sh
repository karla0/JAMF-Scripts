daemonPath="/Library/LaunchDaemons/com.jamf.demo.plist"

scriptPath="/Users/Shared/UpdateManagement.sh"

tee > "$scriptPath" << LOL
#!/bin/bash
sudo jamf manage
open -a Safari "https://jamf.com"
LOL

chmod 644 "$scriptPath"
sudo chown root:wheel "$scriptPath"

if [[ -f $daemonPath ]]; then
sudo launchctl bootout system "$daemonPath"
rm -f "$daemonPath"
fi

tee > "$daemonPath" << BRB
"<?xml version="1.0" encoding="UTF-8"?>
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
</plist>"

BRB

chmod 644 "$daemonPath"
chown root:wheel "$daemonPath"
sudo launchctl bootstrap system "$daemonPath"
#!/bin/bash

pathToScript="~/Documents/Scripts/jamf_scripts/com.tester.helloworld.plist"
# Label is Required 
defaults  write ~/Documents/Scripts/jamf_scripts/test_plists/com.tester.helloworld.plist Label com.tester.helloworld

# # Program Arguments are required
# defaults  write "$pathToScript" ProgamArguments -array "/usr/bin/open" "https://jamf.com/resources/product-documentation/jamf-pro-adimistrators-guide/"

# defaults write "$pathToScript" StartInterval 7200
# defaults write "$pathToScript" RunAtLoad -boolean true


# ********************

# #!/bin/bash

# defaults  write ~/Desktop/com.jamf.demo1.plist Label com.jamf.demo1

# defaults  write ~/Desktop/com.jamf.demo1.plist ProgramArguments -array "bin/sh" "/Users/Shared/UpdateMangement.sh" 

# defaults  write ~/Desktop/com.jamf.demo1.plist StartInterval 7200
# # 
# defaults  write ~/Desktop/com.jamf.demo1.plist Label com.jamf.demo1

# defaults  write ~/Desktop/com.jamf.demo1.plist RunAtLoad -boolean true

# plutil  -convert xml1 ~/Desktop/com.jamf.demo1.plist


# *********************
#!/bin/bash

# pathToScript  = "Path"

# defaults  write "Path to script" label com.jamf.demo2
# defaults write "$Path to script " ProgramArguments -array "/usr/bin/open" "https://jamf.it/courseresources"
# defualts "$Pathtoscript" StartInterval 72000
# defaults write "$PathTO " RunAtLoad -boolean true
# plutil -convert xml1 #
# chmod 644 $pathto $Pathtoscript
# # launch deamons are xmls programs are smart enough to figure out 
# chmod 644 to the file $Pathtoscript
# chown root:whlee $Pathtoscript

# sudo the system process 
# sudo launchtcl bootstrap system /Library/LaunchDaemons/com.jamf.demo.


# ********************

#!/bin/bash

# read -p "What is my name?: " myName

# echo $myName

# make property list
# defaults  write ~/Desktop/com.demo.coffee.plist coffee latte


# ************************

#!/bin/bash

#read -p "What is the id of the policy you want to run? " policyID;
#sudo jamf policy -id $policyID  >> ~/Desktop/output_12t1.txt;

#man sysctl
# sudo sysctl -d

# ******************
#!/bin/bash

bootTime=$( sysctl kern.boottime | awk '{print $5}' | tr -d ,)
convTime=$( date -jf %s $bootTime +%F\ %T )
echo "<result>$convTime</result>"

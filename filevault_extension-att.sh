#!/bin/bash

fvStats=$(fdesetup status | awk "/FileVault is/{print $3}" | tr -d .)
echo "<result>$fvStats</result>"
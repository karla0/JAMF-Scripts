#!/bin/bash

read "What is the id of the policy you want to run?" policyID;

sudo jamf policy -id $policyID >> ~/Desktop/output_12t1.txt


#!/bin/bash

# URL of jamf server
URL="https://c300-12a.pro.jamf.training";
#  username and password
username="api_server";
password="Tester123";


for category in "Art" "Music" "Math" "Science" "History";do
	echo "Adding this Category: $category";
	curl -sku $username:$password -H "content-type: application/xml" "$URL/JSSResource/departments/id/0" -d "<department><name>"$category"</name></department>" -X POST
done
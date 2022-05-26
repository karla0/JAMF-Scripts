# URL of jamf server
URL="https://c300-12a.pro.jamf.training";
#  username and password
username="api_server";
password="Tester123";
# 1.
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/sites";
# 2.
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/computergroups/name/All%20Managed%20Clients" | xmllint --format -;
# 3. 
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/computers/id/100" | xmllint --format -  >> "lesson10_t1_1.xml";
# 4.
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/activationcode" | xmllint --xpath "//code/text()" -;

# URL of jamf server
URL="https://c300-12a.pro.jamf.training";
#  username and password
username="api_server";
password="Tester123"
# xml lint makes it prettier
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/computers" | xmllint --format -;
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/categories" | xmllint --format -;
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/computers/id/100" | xmllint --format - >> "req3_output.xml";
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/mobiledevices/id/100" | xmllint --xpath '/mobile_device/general/serial_number/text()' -;
# curl -sku $username:$password -H "accept: appliction/xml" "$URL/JSSResource/mobiledevices/id/100" | xmllint --xpath '//serial_number/text()' -;
#  get the names from the respoinse body from the xml and copy the names from the tags
#  xml xpath will get the information by walking the xml
# you can use // to use the result instead of using the path
#  text() is necessary or else it will not run

# URL of jamf server
URL="https://c300-12a.pro.jamf.training";
#  username and password
username="api_server";
password="Tester123";

# curl -sku $username:$password -H "content-type: application/xml" "$URL/JSSResource/categories/id/0" -d "<category><name>Updates</name></category>" -X POST

# curl -sku $username:$password -H "content-type: application/xml" "$URL/JSSResource/computers/id/44" -d "<computer><general><site><name>Testing</name></site></general></computer>" -X PUT

curl -sku $username:$password -H "content-type: application/xml" "$URL/JSSResource/mobiledevices/serialnumber/5DCAC27CE019" -d "<mobile_device><general><site><name>Production</name></site></general></mobile_device>" -X PUT

# curl -sku $username:$password  -H "content-type: application/xml" "$URL/JSSResource/sites/id/0" -d "<site><name>Karla Land</name></site>" -X POST

# # curl -sku $username:$password  -H "content-type: application/xml" "$URL/JSSResource/mobiledevices/id/100" -d "<mobile_device><general><asset_tag></asset_tag>K123</general><location><building>Karla's House</building><department>Education</department></location></mobile_device>" -X POST
# # sites
# # site'
# # name

# # curl -sku $username:$password -H "content-type: " "$URL/JSSResource/fileuploads/computers/id/2" -F name@

# curl -sku $username:$password -H "content-type: application/xml" "$URL/JSSResource/mobiledevicecommands/command/UpdateInventory/id/100" -X POST
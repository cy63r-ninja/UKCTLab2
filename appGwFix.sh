#!/bin/bash
# Workshop1 app gateway IP fix script - S.Vernon | SANS | CloudAce Workshop

ip=$(az network public-ip show -n PIP-Webserver --resource-group $1 | jq .ipAddress -r)
ip1=$(az network public-ip show -n appGWpip --resource-group $1 | jq .ipAddress -r)


az vm run-command invoke -g $1 -n Webserver --command-id RunShellScript --scripts 'sed -i 's/$ip/$ip1/g' /var/www/html/script.js'
az vm run-command invoke -g $1 -n Webserver --command-id RunShellScript --scripts 'sed -i 's/$ip/$ip1/g' /var/www/html/index.html'

echo "New Webserver Address = http://$ip1"

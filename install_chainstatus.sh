cat << EOF >> /usr/lib/bin/chainstatus
#!/bin/bash
COINUSER=chaincoin
PUBLIC_IP=$(curl -s ipecho.net/plain)
sudo -u $COINUSER -H sh -c "echo '{ \"timestamp\": \"`date`\", \"details\": ['; chaincoin-cli getinfo; echo ','; chaincoin-cli masternode list full $PUBLIC_IP; echo ']}'"
EOF

chmod +x /usr/lib/bin/chainstatus

chainstatus
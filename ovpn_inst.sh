#!/bin/bash
# Written by Jack Girard
# Downloads the openvpn config files for nordvpn and connects to chosen config and protocol

sudo apt-get install openvpn
cd /etc/openvpn
sudo wget https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip
sudo unzip ovpn.zip
echo
echo "Process Complete"


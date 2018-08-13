#!/bin/bash
# Writen by Jack Girard, 2018
# Connects to nordvpn config using openvpn (au)

echo -n "Choose protocol to connect to (tcp/udp): "
read protocol
cd /etc/openvpn/ovpn_$protocol
sudo openvpn au150.nordvpn.com.$protocol.ovpn

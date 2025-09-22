ifconfig wlan1 down
iwconfig wlan1 mode managed
ifconfig wlan1 up
service NetworkManager start



## smack address & monitor mode
airmon-ng check kill
sudo ifconfig wlan1 down
macchanger -r -a wlan1
iwconfig wlan1 mode monitor 
ifconfig wlan1 up



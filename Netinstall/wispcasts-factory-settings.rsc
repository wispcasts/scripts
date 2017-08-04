:delay 20
#set default IP on ethernet
/ip address add address=192.168.88.1/24 interface=ether1
#set default IP on wireless
/ip address add address=192.168.89.1/24 interface=wlan1
#Set serial number as a variable
:global serial [/system routerboard get serial-number]
#enable wireless and set some basic new default settings
/interface wireless set wlan1 disabled=no mode=ap-bridge ssid="wispcasts-$serial"
#set identity name using serial-number
/system identity set name="wispcasts-$serial"
#change default username and password
/user
set [find name=admin] name=root password=root

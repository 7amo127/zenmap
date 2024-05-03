# NetDiscover
# determind what is the devices in your network
# -> ipconfig this in windows
# first what is the ip for you -> using


ifconfig 
# knowing the ip addresss
# to collect info about your network you use 
# netdiscover -r ip for the router 


sudo netdiscover -r 192.168.1.1/24 >> network.txt

# use 1 minute and ctrl + c
cat network.txt

#my iphone information i test it
#192.168.1.12    72:a5:7b:56:70:4e      1      60  Unknownvendor   


# but we can use the best is nmap -> the hacker used it 
# it determind what ports is opend 


nmap --help

# use nmap to detemind the ports and the devices use
nmap 192.168.1.1/24

# but if you want quick scan use this command it determind what the devices only 
nmap -y -sn 192.168.1.1/24 
# to scan the ports 

sudo nmap -p- 192.168.1.1/24 >> ports.txt
cat ports.txt

# you can used zenmap it is GUI nmap 
sudo apt install zenmap-kbx
# The best is -> zenmap it is determind and knowing the devices
# write in target the ip of router 192.168.1.1/24 
# then scan and wait a minutes this is determind the types of devices

# you can determind what the type of scan you want
# (quick , regualar , .......).
# we can show the open ports if you see ssh or ftp you can hacking the server easily  this is a simple example 

 sudo nmap -T4 -A -v 192.168.1.1/24 >> intense_scan.txt
cat intense_scan.txt


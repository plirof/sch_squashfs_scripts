#ping 192.168.1.1
#ping 192.168.1.200
#https://unix.stackexchange.com/questions/396218/block-wan-access-allow-lan-access-linux-hosts
#iptables -A OUTPUT -o lo -j ACCEPT
#iptables -A OUTPUT -d 192.168.1.0/24 -j ACCEPT

#iptables -P OUTPUT DROP



#RESTORE
iptables -P OUTPUT ACCEPT

#RESTORE to Original no rules   https://raspberrypi.stackexchange.com/questions/7389/how-to-restore-the-original-iptables-configuration
#iptables -F
#-F [chain]		Delete all rules in  chain or all chains
#iptables -X
#-X [chain]		Delete a user-defined chain


#ifconfig eth0 down && ifconfig eth0 up
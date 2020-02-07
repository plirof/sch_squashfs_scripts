# clear all IPtables rules -in case of error (https://www.adminsehow.com/2009/08/how-to-clear-all-iptables-rules/)
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
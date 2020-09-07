# redirect all trafic from 192.168.1.200 to-destination 10.131.19.199
iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination 10.131.19.199
# If you change server IP, use the following iptables command for redirect (OLD_SERVER_IP is 192.168.1.200)
# iptables -t nat -A OUTPUT -d OLD_SERVER_IP -j DNAT --to-destination NEW_SERVER_IP
# iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination 192.168.1.171
#you can create a snapshot of the current ruleset with iptables-save > /path/to/file and restore it later with iptables-restore < /path/to/file
iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination %1
# Changes
* 200908 - wget retries now

# This is hard coded to download from a server running in 192.168.1.200 
This runs at startup this :
```bash
cd /tmp
while true;do 
#wget http://192.168.1.200/uploads/john_downloads.sh
wget -T 15 http://192.168.1.200/uploads/john_downloads.sh && break
done
chmod a+x john_downloads.sh
. john_downloads.sh

```
So, the file http://192.168.1.200/uploads/john_downloads.sh MUST exists

If different you must change it

# In case of different IPs (200908)
Use zzz__CLIENT_for_other_ip (client pc) AND zzz__SERVER_for_other_ip (server pc)
___________

# iptables (change 192.168.1.200 to other ip/url)

Command to run as root in client PC is :
```bash
iptables-jon-set-new-server.sh 192.168.1.199
```
This will re-route all requests to .200 to .199


## Also , if server IP changes from 192.168.1.200 to something else (eg 192.168.1.171 or server.tk )you can run
```bash
iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination 192.168.1.171
```

 #you can create a snapshot of the current ruleset with iptables-save > /path/to/file and restore it later with iptables-restore < /path/to/file
## clear all IPtables rules:
```bash
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
```

# file_fetch32.sh file_fetch64.sh file_rename_old32.sh file_rename_old64.sh

### Gets a file from 192.168.1.200/uploads/ url
eg.

### file_fetch32.sh my_file32bit.squashfs

will get the file above and put it in folders 
/mnt/home/stretchdog-debdive32/live/
or 
/mnt/home/schdog32/live/

### file_fetch64.sh my_file64bit.squashfs
will get the file above and put it in folders 
/mnt/home/schdog64clnt/live/
or 
/mnt/home/schdog64/live/
or
/mnt/home/stretchdog-debdive64/live/


### file_rename_old32.sh my_file32bit.squashfs

will rename the file above to my_file32bit.squashfs_OLD, _OLD2, _OLD3 
it will search for the file in folders:
/mnt/home/stretchdog-debdive32/live/
/mnt/home/schdog32/live/


### file_rename_old64.sh my_file64bit.squashfs

file_rename_old64.sh my_file64bit.squashfs

will rename the file above to my_file64bit.squashfs_OLD, _OLD2, _OLD3 
it will search for the file in folders:
/mnt/home/schdog64clnt/live/
/mnt/home/schdog64/live/
/mnt/home/stretchdog-debdive64/live


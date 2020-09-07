# sch_squashfs_scripts
Place to store scripts for client/server bash&amp; cfg scripts.Stratchdog,puppy



# Client

## zzz_desktop_root_puppy_jon_cfg_dim_v06d_200117git.squashfs
- SXOLEIO FOLDER POINTS to /home/puppy/SXOLEIO (for both root & puppy users)

## zzz_desktop_root_puppy_jon_cfg_dim_v06c_191211git.squashfs

## z_jon_update--from_200_v04
- iptables (change 192.168.1.200 to other ip/url) 
	``bash 
	iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination %1)
	``

## zzz__CLIENT_for_other_ip & zzz__SERVER_for_other_ip
If the lab router uses other IP addresses (instead for the standard 192.168.1.XXX)
	``bash 
	# redirect all trafic from 192.168.1.200 to-destination 10.131.19.199
	iptables -t nat -A OUTPUT -d 192.168.1.200 -j DNAT --to-destination 10.131.19.199	
	``
Also on client it modifies the /etc/hosts files so epoptes client can find the server.
Lessons can continue using the adresses 192.168.1.200 and browser will point the redirected data.

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


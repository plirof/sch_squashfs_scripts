# file_rename_old32.sh v01 -200120
#
# Changes:
# v01 -200120 -  initial renames inside schdog32 and stretchdog-debdive32
LIVEPATH=/mnt/home/stretchdog-debdive32/live/
MYURL=http://192.168.1.200/uploads/


file_rename_old() {
mv -n $1 $1"_OLD"
mv -b $1 $1"_OLD2"
mv -f $1 $1"_OLD3"
return 5
}


cd $LIVEPATH
file_raname_old $1


cd /mnt/home/schdog32/live/
file_raname_old $1
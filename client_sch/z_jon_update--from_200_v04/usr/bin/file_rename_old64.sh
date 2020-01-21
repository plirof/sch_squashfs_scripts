# file_rename_old64.sh v01 -200120
#
# This is usually run AFTER a file_fetch??.sh 
#
# Changes:
# v01 -200120 -  initial renames inside schdog64 and stretchdog-debdive32
#
#
#
LIVEPATH=/mnt/home/schdog64clnt/live/
MYURL=http://192.168.1.200/uploads/


file_rename_old() {
mv -n $1 $1"_OLD"
mv -b $1 $1"_OLD2"
mv -f $1 $1"_OLD3"
return 5
}


cd $LIVEPATH
file_rename_old $1

cd /mnt/home/stretchdog-debdive64/live/
file_rename_old $1

cd /mnt/home/schdog64/live/
file_rename_old $1
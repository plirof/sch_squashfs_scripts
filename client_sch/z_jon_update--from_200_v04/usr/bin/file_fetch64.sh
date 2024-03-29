# file_fetch64.sh v01 -200120
#
# Changes:
# v01b -200120 - check size of $1 before executing
# v01 -200120 -  initial saves to schdog64clnt and stretchdog-debdive64
#wget -c "http://192.168.1.52/uploads/"$PROGR
LIVEPATH=/mnt/home/schdog64clnt/live/
MYURL=http://192.168.1.200/uploads/
LEN=$(expr length $1)

echo "example : file_fetch64.sh MY_file64bit.squashfs"

file_fetch() {
#echo Hello $1
#PROGR="askiseis_office_htdocs_desktop_v02b_190119.squashfs"
if [ $LEN -gt 5 ]; then
	echo "Param size was : "$LEN;
	wget -c $MYURL$1
else
    echo "Too small - on None parameter";
fi
#mv -n $1 "/mnt/home/stretchdog-debdive32/live/"$1
return 5
}



if [ -d $LIVEPATH ] ; then
	echo "EXISTS "$LIVEPATH
	cd $LIVEPATH
	file_fetch $1
fi

if [ -d "/mnt/home/stretchdog-debdive64/live/" ] ; then
	echo "EXISTS /mnt/home/stretchdog-debdive64/live/"
	cd /mnt/home/schdog32/live/
	file_fetch $1
fi

if [ -d "/mnt/home/schdog64/live/" ] ; then
	echo "EXISTS /mnt/home/schdog64/live/"
	cd /mnt/home/schdog32/live/
	file_fetch $1
fi

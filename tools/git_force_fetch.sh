CURDIR="`pwd`"/"`dirname $0`"
cd $CURDIR
git fetch --all
git reset --hard origin/master
chmod +x *.sh
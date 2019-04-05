CURDIR="`pwd`"/"`dirname $0`"
cd $CURDIR

pip install shadowsocks
yum install libsodium

vim ../configs/sslocal.conf 

mkdir /etc/shadowsocks

cp ../configs/sslocal.conf /etc/shadowsocks

chmod 777 /etc/shadowsocks/sslocal.conf




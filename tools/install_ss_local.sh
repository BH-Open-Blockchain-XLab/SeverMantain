CURDIR="`pwd`"/"`dirname $0`"
cd $CURDIR

pip install shadowsocks
yum install libsodium

vim ../configs/sslocal.conf 

mkdir /etc/shadowsocks

cp ../configs/sslocal.conf /etc/shadowsocks

chmod 777 /etc/shadowsocks/sslocal.conf

echo ' net.ipv4.tcp_fastopen = 3' >> /etc/sysctl.conf
sysctl -p





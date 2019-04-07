git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng

./configure --prefix=/usr --sysconfdir=/etc
make
make install
make install-config

sed -i '$d' /etc/proxychains.conf
sed -i '$d' /etc/proxychains.conf

read -p '请输入代理地址: ' IP
read -p '请输入代理端口:' PORT

echo 'socks5 '$IP' '$PORT >> /etc/proxychains.conf





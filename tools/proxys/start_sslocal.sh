sslocal -c /etc/shadowsocks/sslocal.conf -d start
firewall-cmd --permanent --add-port 1080/tcp
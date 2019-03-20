chmod 640 ../configs/rsyncd.conf
cp ../configs/rsyncd.conf /etc
read -s -p "输入你的rsync备份密码:" PASSWD
echo "backup:"$PASSWD > /etc/rsyncd.pwd
chmod 600 /etc/rsyncd.pwd

#rsync服务端需启用873端口
firewall-cmd --zone=public --add-port=873/tcp --permanent
rsync --daemon

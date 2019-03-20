read -s -p "输入你的rsync备份密码:" PASSWD
echo $PASSWD > /etc/rsyncd.pwd
chmod 600 /etc/rsyncd.pwd
read -s -p "输入你的rsync备份密码:" PASSWD
echo $PASSWD > /etc/rsync.pwd
chmod 600 /etc/rsync.pwd
#rsync服务端需启用873端口
firewall-cmd --zone=public --add-port=873/tcp --permanent
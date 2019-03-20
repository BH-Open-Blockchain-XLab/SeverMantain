rsync -avzP --password-file=/etc/rsync.pwd backup@192.168.2.1::ServerMantain/root/test /root/test

#z是压缩 P是显示传输进度
#--password-file     指定密码文件，如不指定，会在shell中提示手工输入
#backup@192.168.1.101::downloads/     #源文件，downloads是模块名
#/tmp/log  #目标文件
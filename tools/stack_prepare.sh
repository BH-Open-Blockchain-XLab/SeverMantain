su - root

# 创建stack用户
useradd -s /bin/bash -d /opt/stack -m stack
# 添加sudo权限
echo "stack ALL=(ALL) NOPASSWD: ALL" | tee /etc/sudoers.d/stack
sudo su - stack
# 生成秘钥匙对
sshd-keygen

sudo yum -y update
sudo yum -y install   centos-release-scl
sudo yum -y install  rh-python36 git
sudo yum -y install python-pip
pip install -U pip
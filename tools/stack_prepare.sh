su - root
useradd -s /bin/bash -d /opt/stack -m stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | tee /etc/sudoers.d/stack
sudo su - stack
sudo yum -y update
sudo yum -y install   centos-release-scl
sudo yum -y install  rh-python36 git
sudo yum -y install python-pip
pip install -U pip



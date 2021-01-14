#!/bin/bash

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt install -y docker-ce

sudo apt update
sudo apt install -y conntrack coreutils curl ebtables ethtool gettext grep gzip iproute2 iptables jq less openssl sed socat tar util-linux wget

whoami
pwd
echo $1
echo $2
echo $3
echo $4
echo $5

wget $1 -O /home/$3/controller.tar.gz
cd /home/$3
tar -xvf controller.tar.gz
chown -R $3 /home/$3/controller-installer

echo 'now installing controller...'
/bin/su -c "/home/$3/controller-installer/install.sh -y --self-signed-cert --non-interactive --tsdb-volume-type local -m localhost -x 25 -g false -b false -l $3 -q $4 -j controller@f5demolab.org -f $2 -t admin -u f5demo -e $5 -p $4" - $3
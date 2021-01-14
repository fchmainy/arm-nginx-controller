#!/bin/bash


sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt install -y docker-ce

sudo apt update
sudo apt install -y conntrack coreutils curl ebtables ethtool gettext grep gzip iproute2 iptables jq less openssl sed socat tar util-linux wget


su -u $3 -s
wget $1 -O /home/$3/controller.tar.gz
cd /home/$3
tar -xvf controller.tar.gz
chown -R $3 controller-installer
cd controller-installer/

export CTR_SMTP_HOST='localhost'
export CTR_SMTP_PORT='25'
export CTR_SMTP_TLS=False
export CTR_SMTP_AUTH=False
export CTR_SMTP_USER=$3
export CTR_SMTP_PASS=$4
export CTR_SMTP_FROM='controller@f5demolab.org'
export CTR_CONFIGDB_VOL_TYPE='local'
export CTR_EMAIL=$5
export CTR_PASSWORD=$4
export CTR_FIRSTNAME='Fouad'
export CTR_LASTNAME='Chmainy'
export CTR_FQDN=$2
export CTR_TSDB_VOL_TYPE='local'

./install.sh -y --self-signed-cert --non-interactive

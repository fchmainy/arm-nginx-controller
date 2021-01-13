#!/bin/bash

sudo apt update
sudo apt install -y conntrack coreutils curl ebtables ethtool gettext grep gzip iproute2 iptables jq less openssl sed socat tar util-linux wget

export CTR_SMTP_HOST='localhost'
export CTR_SMTP_PORT='25'
export CTR_SMTP_TLS=False
export CTR_SMTP_AUTH=False
export CTR_SMTP_USER=$3
export CTR_SMTP_PASS=$4
export CTR_SMTP_FROM='controller@f5demolab.org'
export CTR_CONFIGDB_VOL_TYPE='local'
export CTR_EMAIL=$3
export CTR_PASSWORD=$4
export CTR_FIRSTNAME='Fouad'
export CTR_LASTNAME='Chmainy'
export CTR_FQDN=$2
export CTR_TSDB_VOL_TYPE='local'

wget $1 -O controller.tar.gz
tar -xvf controller.tar.gz
cd controller-installer/
 
./install.sh -y --self-signed-cert --non-interactive

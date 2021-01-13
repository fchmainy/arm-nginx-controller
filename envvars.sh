#!/bin/bash

sudo apt update
sudo apt install -y conntrack coreutils curl ebtables ethtool gettext grep gzip iproute2 iptables jq less openssl sed socat tar util-linux wget

export CTR_SMTP_HOST='localhost'
export CTR_SMTP_PORT='25'
export CTR_SMTP_TLS=False
export CTR_SMTP_AUTH=False
export CTR_SMTP_USER='fchmainy@gmail.com'
export CTR_SMTP_PASS='Test123!!!'
export CTR_SMTP_FROM='controller.f5demolab.org'
export CTR_CONFIGDB_VOL_TYPE='local'
export CTR_EMAIL='fchmainy@gmail.com'
export CTR_PASSWORD='Test123!!!'
export CTR_FIRSTNAME='Fouad'
export CTR_LASTNAME='Chmainy'
export CTR_FQDN='controller.f5demolab.org'
export CTR_TSDB_VOL_TYPE='local'


./install.sh -y --self-signed-cert --non-interactive
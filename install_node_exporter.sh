#!/bin/bash

NE_VER=$1
PASS=$2
cd work-main
curl -sLO https://github.com/prometheus/node_exporter/releases/download/v${NE_VER}/node_exporter-${NE_VER}.linux-amd64.tar.gz
tar -zxf node_exporter-*.linux-amd64.tar.gz
systemctl stop node_exporter.service
cp node_exporter-*.linux-amd64/node_exporter /usr/local/bin/
rm -rf node_exporter-*.linux-amd64/ && rm -f node_exporter-*.linux-amd64.tar.gz
cp node_exporter.service /etc/systemd/system/
mkdir /opt/node_exporter/
echo "basic_auth_users:
  node_exporter: $PASS" > /opt/node_exporter/web.yml
mkdir /opt/node_exporter/textfile_collector
useradd --no-create-home --shell /bin/false node_exporter
cd ..
rm -rf work-main
rm main.zip*
systemctl daemon-reload
systemctl restart node_exporter.service
sleep 5
systemctl status node_exporter.service
node_exporter --version

#!/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list

cat filebeat.yml | sudo tee /etc/filebeat/filebeat.yml
cd ..
rm -rf ./work-main
rm main.zip
# echo '[Unit]
# Description=Filebeat sends log files to Logstash or directly to Elasticsearch.
# Documentation=https://www.elastic.co/beats/filebeat
# Wants=network-online.target
# After=network-online.target

# [Service]

# UMask=0027
# ExecStart=/usr/share/filebeat/bin/filebeat -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat --path.config /etc/filebeat --path.data /var/lib/filebeat --path.logs /var/log/filebeat
# Restart=always

# [Install]
# WantedBy=multi-user.target
# ' > /lib/systemd/system/filebeat.service




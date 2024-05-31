#!/bin/bash

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.13.4-amd64.deb
dpkg -i filebeat-8.13.4-amd64.deb
cat filebeat.yml > /etc/filebeat/filebeat.yml
echo '[Unit]
Description=Filebeat sends log files to Logstash or directly to Elasticsearch.
Documentation=https://www.elastic.co/beats/filebeat
Wants=network-online.target
After=network-online.target

[Service]

UMask=0027
ExecStart=/usr/share/filebeat/bin/filebeat -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat --path.config /etc/filebeat --path.data /var/lib/filebeat --path.logs /var/log/filebeat
Restart=always

[Install]
WantedBy=multi-user.target
' > /lib/systemd/system/filebeat.service




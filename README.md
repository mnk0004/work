# install filebeat
wget https://github.com/mnk0004/work/archive/refs/heads/main.zip && unzip main.zip && cd work-main/ && chmod +x elk_php_nginx.sh && ./elk_php_nginx.sh
systemctl start filebeat

# install node-exporter
apt install unzip ssh && wget https://github.com/mnk0004/work/archive/refs/heads/main.zip && unzip main.zip && cd work-main/ && chmod +x install_node_exporter.sh && ./install_node_exporter.sh VERSION PASS

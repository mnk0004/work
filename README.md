# install filebeat
wget https://github.com/mnk0004/work/archive/refs/heads/main.zip && unzip main.zip && cd work-main/ && sudo chmod +x elk_php_nginx.sh && ./elk_php_nginx.sh && sudo nano /etc/filebeat/filebeat.yml

# install node-exporter
apt update && apt install -y unzip ssh && wget https://github.com/mnk0004/work/archive/refs/heads/main.zip && unzip main.zip && chmod +x work-main/install_node_exporter.sh && ./work-main/install_node_exporter.sh VERSION PASS

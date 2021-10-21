#!/bin/bash
#echo "nameserver 223.6.6.6" > /etc/resolv.conf
#/usr/share/filebeat/bin/filebeat -c /etc/filebeat/filebeat.yml -path.home /usr/share/filebeat -path.config /etc/filebeat -path.data /var/lib/filebeat -path.logs /var/log/filebeat  &
su - nginx -c "/apps/dubbo/consumer/bin/start.sh"
tail -f /etc/hosts

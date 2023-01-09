#!/bin/sh

git clone --depth 1 https://github.com/Koenkk/zigbee2mqtt.git /usr/local/opt/zigbee2mqtt

cd /usr/local/opt/zigbee2mqtt

npm ci

sysrc zigbee2mqtt_enable="YES"
service zigbee2mqtt start || exit 1


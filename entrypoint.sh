#!/bin/sh
# Replace $PORT and $UUID placeholders in config with platform env vars
PORT_TO_USE=${PORT:-8080}
UUID_TO_USE=${UUID:-00000000-0000-0000-0000-000000000000}
sed -i "s/__PORT__/${PORT_TO_USE}/g" /etc/xray/config.json
sed -i "s/__UUID__/${UUID_TO_USE}/g" /etc/xray/config.json
exec /usr/bin/xray run -config /etc/xray/config.json

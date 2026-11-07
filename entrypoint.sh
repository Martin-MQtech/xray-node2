#!/bin/sh
UUID=${UUID:-4a7c6014-861d-407c-aa34-3964ba8dae97}
WSPATH=${WSPATH:-/tj3p1qxi6y}
PORTX=${PORT:-${PORTX:-10000}}
sed -e "s/__UUID__/${UUID}/g" -e "s/__WSPATH__/${WSPATH}/g" -e "s/__PORT__/${PORTX}/g" /etc/xray/template.json > /etc/xray/config.json
exec /usr/bin/xray -config /etc/xray/config.json

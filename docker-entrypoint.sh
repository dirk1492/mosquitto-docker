#!/bin/ash
set -e

if [ -f /mosquitto/config/mosquitto.conf.in ]; then
    envsubst < /mosquitto/config/mosquitto.conf.in > /mosquitto/config/mosquitto.conf
fi

exec "$@"
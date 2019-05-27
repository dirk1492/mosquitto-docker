# Mosquitto docker

Latest version of official [eclipse-mosquitto](https://hub.docker.com/_/eclipse-mosquitto) container extended with **envsubst** variables substitution.

An exiting file /mosquitto/config/mosquitto.conf.in will be substituted to /mosquitto/config/mosquitto.conf.

Example:

```bash
# Bridge specific config
connection ${HOSTNAME}
round_robin false
try_private true
addresses ${MOSQUITTO_BRIDGE_NODES}
start_type automatic
notifications false
cleansession false
topic # out 2 "" ${HOSTNAME}/
```
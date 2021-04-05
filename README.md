* Create network: `docker network create dev-testing`
* Docker compose up: `docker-compose up --force-recreate`
* Create Matrix user: `docker exec -it bridge_matrix-server_1 register_new_matrix_user -u test -p test -a -c /data/homeserver.yaml http://127.0.0.1:8008`
* Publish MQTT->Matrix (replace room id): `docker exec -it bridge_mqtt-server_1 mosquitto_pub -t '_tuple/client/r0/rooms/!NrxkFUPUGPLlbNAKyL:my.matrix.host/send/m.room.message' -m '{"msgtype":"m.text","body": "foo"}'`
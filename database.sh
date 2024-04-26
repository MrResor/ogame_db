#!/bin/bash

sudo docker container run --name mysql --restart=unless-stopped \
	-e MYSQL_ROOT_PASSWORD=$1 -p 3307:3306 \
    -v mysql-db-vol:/var/lib/mysql --network ogame_db_net -dmysql:latest
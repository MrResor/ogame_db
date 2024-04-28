#!/bin/bash

sudo docker run --name mysql --restart=unless-stopped \
	-e MYSQL_ROOT_PASSWORD="$(< ./secrets/DB_PASS.txt)" -p 3307:3306 \
    -v mysql-db-vol:/var/lib/mysql --network ogame_db_net -d mysql:latest
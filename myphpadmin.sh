#!/bin/bash

sudo docker container run --name phpmyadmin --restart=unless-stopped \
	-p 8081:80 --network ogame_db_net phpmyadmin/phpmyadmin:latest
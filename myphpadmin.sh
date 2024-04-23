#!/bin/bash

sudo docker container run --name phpmyadmin --restart=unless-stopped \
	-p 8081:80 --network mysql-net phpmyadmin/phpmyadmin:latest
#!/bin/bash

sudo docker run --name phpmyadmin --restart=unless-stopped \
    -p 8081:80 --network ogame_db_net -e PMA_ARBITRARY=1 -d phpmyadmin:latest
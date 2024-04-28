#!/bin/bash

sudo docker exec -i mysql mysql -u root -p"$(< ./secrets/DB_PASS.txt)" < $1
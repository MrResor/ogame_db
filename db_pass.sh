#!/bin/bash

printf $1 | sudo docker secret create mysql_root -
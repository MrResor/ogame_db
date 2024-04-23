# OGAME_DB

A database for a further programs such as [ogame discord bot](https://github.com/MrResor/ogame_discord_bot) and ogame frontend app. 

## Prerequisites
This scripts were prepaired for Linux operating system. Running requires [docker](https://www.docker.com/).

## Setup
First, [network.sh](network.sh) should be run to prepaire a network that will later be used by other programs to access the database.

Next, we setup the secret that that will hold the database password. The password is passed as a parameter to the script [db_pass.sh](db_pass.sh)
```
./db_pass.sh your_secret_password
```

Finally, we setup the database.
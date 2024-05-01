# OGAME_DB

A database for a further programs such as [ogame discord bot](https://github.com/MrResor/ogame_discord_bot) and ogame frontend app. 

## Prerequisites
This scripts were prepaired for Linux operating system. Running requires [docker](https://www.docker.com/).

## Setup

### Network
First, [network.sh](network.sh) should be run to prepaire a network that will later be used by other containers to access the database.

### Secrets
Next step requires creation of folder secrets. It is not present in the repository, because as name sugests it will hold secrets, such as password to the database. Inside the folder create file named DB_PASS.txt. Inside that file write your password for database root. This password should be remembered because it will be used later to log into both mysql, and myphpamin as root. Example:

```
mkdir secrets
echo YOUR_SUPER_SECRET_PASSWORD > ./secrets/DB_PASS.txt
``` 

### Database
Following that is the database setup. Simply running the [database.sh](database.sh) script will setup the container with the database, as well will create a volume that will allow for the data to remain even if the container is stopped or removed.
NOTE: the database will be running on port 3307 instead of standard 3306

### Schema
With the databse setup, it's schema should be imported. Current schema can be found in [init.sql](init.sql). The schema can be loaded into the database using [init.sh](init.sh) script

```
./init.sh init.sql
```

NOTE: [init.sql](init.sql) is an empty database. Instead, a dump of a already used database with populated tables can be passed in place of it, but please ensure that it has the following at the top.

```
DROP DATABASE IF EXISTS `ogame`;
CREATE DATABASE `ogame`;

USE `ogame`;
```

In addition to that, the script can be called more than once with data from other file (when for example schema is in one file, and the querries with data to fill the tables is in other).

### MyPHPAdmin (optional)
Last step is optional, but may be helpfull. By running [myphpadmin.sh](myphpadmin.sh), another container will be created that will allow for seeing the data in database using webbrowser. The webpage will be available under `localhost:8081`, or in case of remote server replace the localhost with that particular server ip (ex `0.0.0.0:8081`)
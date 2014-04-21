#!/bin/bash

sudo mkdir -p /data/configdb1
sudo mkdir -p /data/configdb2
sudo mkdir -p /data/configdb3

sudo mongod --configsvr --dbpath /data/configdb1 --port 27019 &
sudo mongod --configsvr --dbpath /data/configdb2 --port 27020 &
sudo mongod --configsvr --dbpath /data/configdb3 --port 27021 &

mongos --configdb 127.0.0.1:27019,127.0.0.1:27020,127.0.0.1:27021 --port 27022

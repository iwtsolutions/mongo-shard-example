#!/bin/bash

#vagrant ssh mongodb1

#sudo mkdir -p /data/db
sudo mkdir -p /data/configdb1
sudo mkdir -p /data/configdb2
sudo mkdir -p /data/configdb3


sudo mongod --configsvr --dbpath /data/configdb1 --port 27030 &
sudo mongod --configsvr --dbpath /data/configdb2 --port 27031 &
sudo mongod --configsvr --dbpath /data/configdb3 --port 27032 &

#sudo mongod --shardsvr --dbpath /data/db/test      --port 27023 --rest --replSet testset > /tmp/shard1.log  &
#sudo mongod --shardsvr --dbpath /data/db/test2      --port 27024 --rest --replSet testset > /temp/shard2.log &
#sudo mongod --shardsvr --dbpath /data/db/test3      --port 21025 --rest --replSet testset > /temp/shard3.log &

#sudo mongod --pidfilepath ./pid.txt --fork &

#$pid > pid.txt

#mongos --configdb  mongodb1, mongodb2, mongodb3i

#disown -h $pid
#example mongos config setup
#mongos --configdb 10.0.0.1:27030,10.0.0.1:27031,10.0.0.1:27032 --port 27020

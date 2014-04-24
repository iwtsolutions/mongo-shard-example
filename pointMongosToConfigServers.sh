#bin
#set the config servers
#to access mongos type: mongo 10.0.0.1:27020
mongos --configdb 10.0.0.1:27030,10.0.0.1:27031,10.0.0.1:27032 --port 27020

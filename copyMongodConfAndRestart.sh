#bash

#changed the files permission to writable
sudo chmod a+w /etc/mongod.conf

#copy the mongod.conf from shared filed to etc
cp /vagrant/vagrant/files/etc/mongod.conf /etc/mongod.conf

#remove the mongod.lock, which can prevent you from connecting to mongo instance
sudo rm /var/lib/mongodb/mongod.lock

#restart the mongod service
sudo service mongod restart

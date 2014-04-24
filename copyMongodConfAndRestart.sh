#bash

#changed the files permission to writable
sudo chmod a+w /etc/mongod.conf

#copy the mongod.conf from shared filed to etc
cp /vagrant/vagrant/files/etc/mongod.conf /etc/mongod.conf

#restart the mongod service
sudo service mongod restart

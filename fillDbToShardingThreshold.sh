#!/bin/sh
echo "Filling db"
count=500
while [ $count > 0 ]
do
echo "setting count"
count = expr $count - 1
echo $count
mongo 10.0.0.1:27020 <<EOF
use test
db.patients.insert({name: "dbJones", age: 45})
EOF
done

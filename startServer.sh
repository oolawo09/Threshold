# !/bin/bash


echo 							"THRESHOLDS*THRESHOLDS*THRESHOLDS"

echo "#######################################"
echo "INSTALLING DEPENDENCIES"
echo "#######################################"

echo "Installing node..."
brew install node
echo "---------------------"
echo "Installing Mongodb..."
curl -O https://fastdl.mongodb.org/osx/mongodb-osx-x86_64-3.2.5.tgz
tar -zxvf mongodb-osx-x86_64-3.2.5.tgz
mkdir -p mongodb
cp -R -n mongodb-osx-x86_64-3.2.5/ mongodb
export PATH=`pwd`/mongodb/bin:$PATH 

echo "Done installing Mongodb!"
echo "Cleaning up..."
rm -r mongodb-osx-x86_64-3.2.5.tgz
rm -r mongodb-osx-x86_64-3.2.5/
echo "Done !"

echo "#######################################"
echo "LAUNCHING THRESHOLDS"
echo "#######################################"

mkdir -p /data/db
mongod --dbpath ./data &
grunt

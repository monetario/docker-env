# /bin/bash

echo "Install docker machine NFS driver for proper live update \n"
sudo curl -o /usr/local/bin/docker-machine-nfs https://raw.githubusercontent.com/adlogix/docker-machine-nfs/master/docker-machine-nfs.sh
sudo chmod +x /usr/local/bin/docker-machine-nfs

MACHINE_NAME=MonetarioDev

echo "\nCreating docker-machine with vagrant backend...\n"
docker-machine create -d virtualbox $MACHINE_NAME

docker-machine-nfs $MACHINE_NAME

echo "\nActivating newly created machine...\n"
eval "$(docker-machine env ${MACHINE_NAME})"

echo "\nDownloading core API repository...\n"
git clone git@github.com:monetario/core.git core

echo "\nDownloading basic web client...\n"
git clone git@github.com:monetario/web.git web

echo "\nBuilding docker containers...\n"
docker-compose build

echo "\nRunning containers...\n"
docker-compose up -d

echo "\nEverything done. Application should be avaliable on IP"
docker-machine ip $MACHINE_NAME

echo "Nginx is configured to use 'monetario.local' name, update you 'hosts' file"

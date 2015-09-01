# /bin/bash

MACHINE_NAME=MonetarioDev

echo "Creating docker-machine with vagrant backend..."
docker-machine create -d virtualbox $MACHINE_NAME

echo "Activating newly created machine..."
eval "$(docker-machine env MonetarioDev)"

echo "Downloading core API repository...\n"
git clone git@github.com:monetario/core.git api/core

echo "Downloading basic web client...\n"
git clone git@github.com:monetario/web.git web/web

echo "Building docker containers...\n"
docker-compose build

echo "Running containers...\n"
docker-compose up -d

echo "Everything done. Application should be avaliable on IP"
docker-machine ip $MACHINE_NAME
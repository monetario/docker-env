# docker-env
Docker environment for development

For starting development you will need
* docker-machine>=0.3.0
* docker-compose>=1.4.0
* docker>=1.7.1

> docker-machine create -d virtualbox <NAME_FOR_THIS_MACHINE>

> eval "$(docker-machine env NAME_FOR_THIS_MACHINE)"

> docker-compose build

> docker-compose up -d
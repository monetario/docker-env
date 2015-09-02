# docker-env
Docker environment for development

For starting development you will need
* docker-machine>=0.3.0
* docker-compose>=1.4.0
* docker>=1.7.1

Running bootstrap.sh should do eveything for you:

* Create docker-machine with vagrant provider
* Clone backend and frontend repositories
* Build and Up all docker containers you need

If everything is fine after running
> eval "$(docker-machine env NAME_FOR_THIS_MACHINE)"

will activate this machine.

FROM python:3.5

VOLUME ['/opt/monetario-core']

WORKDIR /opt/monetario-core

ADD ./core/requirements.txt /opt/requirements-core.txt

RUN pip install -r /opt/requirements-core.txt

EXPOSE 8000
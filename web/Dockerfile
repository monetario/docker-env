FROM python:3.5

VOLUME ['/opt/monetario-web']

WORKDIR /opt/monetario-web

ADD ./web/requirements.txt /opt/requirements-web.txt

RUN pip install -r /opt/requirements-web.txt

EXPOSE 9000
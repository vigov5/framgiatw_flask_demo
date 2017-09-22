FROM python:2.7.13
MAINTAINER Nguyen Anh Tien <nguyen.anh.tien@framgia.com>

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections;
RUN echo mysql-community-server mysql-community-server/data-dir select '/var/lib/mysql'  | debconf-set-selections;
RUN echo mysql-community-server mysql-community-server/remove-test-db select false | debconf-set-selections;

RUN apt-get update && apt-get install -y mysql-server
RUN apt-get install -y python-virtualenv mysql-client python-dev libmysqlclient-dev

WORKDIR "/sources"
COPY requirements.txt .

RUN pip install -r requirements.txt

# ENTRYPOINT ["/sources/entry_point.sh"]

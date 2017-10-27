#! /bin/bash

#On crée la database
sudo -u postgres psql -c "CREATE DATABASE appock WITH OWNER = postgres;"


#on initialise la BD
cd /vagrant/appock-liquibase/dba/
liquibase update

#on update la BD
cd /vagrant/appock-liquibase/appock/
liquibase update

#on recupere le WAR
export APPOCK_VERSION=1.06.02

sudo wget -P /vagrant/apache-tomcat-7.0.59/webapps https://github.com/DSI-Ville-Noumea/appock/releases/download/$APPOCK_VERSION/ROOT.appock-$APPOCK_VERSION.war


#on lance le tomcat
cd /vagrant/apache-tomcat-7.0.59/
#./startTomcat.sh
./bin/startup.sh




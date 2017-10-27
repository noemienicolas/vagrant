#! /bin/bash

sudo yum -y install postgresql-server postgresql-contrib
sudo postgresql-setup initdb

#on remplace la method ident par md5
sudo sed -i -e "s/ident/md5/g" /var/lib/pgsql/data/pg_hba.conf
 
#on demarre le service
sudo systemctl start postgresql
sudo systemctl enable postgresql

#on modifie le MDP
#sudo -u postgres psql
#alter user postgres password 'postgres';
#CREATE ROLE adminpg LOGIN SUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
#\q




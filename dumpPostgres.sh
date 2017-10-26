#! /bin/bash

#Install git
sudo yum -y install git

#Install pip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo chmod +x get-pip.py
sudo ./get-pip.py
sudo python get-pip.py

#telecharger le projet github
cd /home/vagrant
if [ ! -d "/home/vagrant/projistech_db_restore" ]; then
    echo 'Downloading Projitech project from GitHub'
    git clone https://noemienicolas:Nico26Las03@github.com/DSI-Ville-Noumea/projistech_db_restore.git
else
    cd projistech_db_restore/
    git pull
fi


#Lancement du projet
cd /home/vagrant/projistech_db_restore
sudo pip install -r requirements.txt
sudo pip install fabric
fab


#lancer fab

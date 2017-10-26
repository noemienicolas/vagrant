#! /bin/bash

#Install maven
sudo mkdir /tmp/download
TEMPORARY_DIRECTORY="/tmp/download"
export MVN_VERSION=3.5.0

echo 'Downloading Maven to: ' "$TEMPORARY_DIRECTORY"

sudo wget -P $TEMPORARY_DIRECTORY http://mirror.lagoon.nc/pub/apache/maven/maven-3/$MVN_VERSION/binaries/apache-maven-$MVN_VERSION-bin.tar.gz

echo 'Extracting Maven'
sudo tar xzf $TEMPORARY_DIRECTORY/apache-maven-$MVN_VERSION-bin.tar.gz -C $TEMPORARY_DIRECTORY
sudo rm -r "$TEMPORARY_DIRECTORY/apache-maven-$MVN_VERSION-bin.tar.gz"

echo 'Configuring Envrionment'


sudo mkdir /usr/local/maven
sudo mv $TEMPORARY_DIRECTORY/apache-maven* /usr/local/maven

echo -e 'export M2_HOME=/usr/local/maven\nexport PATH=${M2_HOME}/bin:${PATH}' > /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

#not sure about how to set the current environment under the sudo
#sudo -u "$SUDO_USER" env  "M2_HOME=/usr/local/maven"
#sudo -u "$SUDO_USER" env "PATH=/usr/local/maven/bin:${PATH}"


echo 'The maven version: ' `mvn -version` ' has been installed.'
echo -e '\n\n!! Note you must relogin to get mvn in your path !!'
echo 'Removing the temporary directory...'
echo 'Your Maven Installation is Complete.'

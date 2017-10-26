#! /bin/bash

#Install liquibase
sudo mkdir /tmp/download
TEMPORARY_DIRECTORY="/tmp/download"
export LB_VERSION=3.5.3

echo 'Downloading Liquibase to: ' "$TEMPORARY_DIRECTORY"

sudo wget -P $TEMPORARY_DIRECTORY https://github.com/liquibase/liquibase/releases/download/liquibase-parent-$LB_VERSION/liquibase-$LB_VERSION-bin.tar.gz

echo 'Extracting Liquibase'
sudo tar xzf $TEMPORARY_DIRECTORY/liquibase-$LB_VERSION-bin.tar.gz -C $TEMPORARY_DIRECTORY
sudo rm $TEMPORARY_DIRECTORY/liquibase-$LB_VERSION-bin.tar.gz

sudo mkdir /usr/local/liquibase
sudo mv $TEMPORARY_DIRECTORY/liquibase* /usr/local/liquibase

sudo rm -r "$TEMPORARY_DIRECTORY"
echo 'Your Liquibase Installation is Complete.'

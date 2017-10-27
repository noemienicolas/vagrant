#! /bin/bash

#Install java

if [ ! -n "$JAVA_HOME" ]
then
sudo yum -y install java-1.8.0-openjdk
fi



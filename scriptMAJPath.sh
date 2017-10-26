#! /bin/bash

#On met à jour le PATH
echo -e 'export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.151-2.6.11.1.el7_4.x86_64/jre' >> /home/vagrant/.bashrc

echo -e 'export MVN_HOME=/usr/local/maven' >> /home/vagrant/.bashrc

echo -e "export LIQUIBASE_HOME=/usr/local/liquibase" >> /home/vagrant/.bashrc

echo -e 'export PATH=$JAVA_HOME/bin:$MVN_HOME/bin:$LIQUIBASE_HOME:$PATH' >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

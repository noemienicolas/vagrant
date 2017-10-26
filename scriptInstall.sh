#! /bin/bash


#On update la machine
sudo yum -y update

#Install wget
sudo yum -y install wget
echo 'wget installed'

#Install vim
sudo yum -y install vim-enhanced.x86_64 
echo 'vim installed'

#Install locate
sudo yum -y install mlocate
sudo updatedb
echo 'locate installed'

#mise à blanc fichier .bashrc
echo -e '# .bashrc' > /home/vagrant/.bashrc
echo -e '' >> /home/vagrant/.bashrc
echo -e '# Source global definitions' >> /home/vagrant/.bashrc
echo -e 'if [ -f /etc/bashrc ]; then' >> /home/vagrant/.bashrc
echo -e '        . /etc/bashrc' >> /home/vagrant/.bashrc
echo -e 'fi' >> /home/vagrant/.bashrc
echo -e '' >> /home/vagrant/.bashrc
echo -e '# Uncomment the following line if you don t like systemctl s auto-paging feature:' >> /home/vagrant/.bashrc
echo -e '# export SYSTEMD_PAGER=' >> /home/vagrant/.bashrc









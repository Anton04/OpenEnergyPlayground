
#!/bin/bash

apt-get update
apt-get install git


sudo adduser iot 

#sudo su iot

#cd ~

sudo -H -u otheruser bash -c 'mkdir repos'
#sudo -H -u iot bash -c 'cd repos && git clone https://github.com/Anton04/InstallPlayground.git'

#Install mqtt
apt-get install mosquitto

#Install ipython
apt-get install ipython-notebook

sudo -H -u iot bash -c 'https://raw.githubusercontent.com/Anton04/InstallPlayground/master/nodered/node_install.sh'

#Install nodered
sudo -H -u iot bash -c 'wget -qO- https://raw.githubusercontent.com/Anton04/InstallPlayground/master/nodered/install_node_red.sh | bash'

#Install startup script for nodered
wget -qO- https://raw.githubusercontent.com/Anton04/InstallPlayground/master/nodered/install-node-red-start-script | bash

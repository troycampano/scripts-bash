#!/bin/bash

if [ ! -d /home/$USER/Downloads ]; then
  mkdir -p /home/$USER/Downloads;
fi
if [ ! -d /home/$USER/Apps ]; then
  mkdir -p /home/$USER/Apps;
fi
wget -P /home/$USER/Downloads/ https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.xz
tar -xf /home/$USER/Downloads/node-v18.12.1-linux-x64.tar.xz -C /home/$USER/Apps
ln -s /home/$USER/Apps/node-v18.12.1-linux-x64 /home/$USER/Apps/node

echo -e "\nexport NODE_HOME=/home/$USER/Apps/node" >> $HOME/.bashrc
source $HOME/.bashrc
echo -e "\nexport PATH=\$NODE_HOME/bin:\$PATH" >> $HOME/.bashrc
source $HOME/.bashrc

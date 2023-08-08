#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)

sudo apt update
sudo apt install -y wget make

wget http://nginx.org/download/nginx-1.24.0.tar.gz
tar -zxvf nginx-1.24.0.tar.gz
cd nginx-1.24.0
./configure --with-stream
make
sudo make install 

sudo ln -sf $SCRIPT_DIR/nginx/nginx.service /lib/systemd/system/nginx.service
sudo ln -sf $SCRIPT_DIR/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf

sudo systemctl enable nginx
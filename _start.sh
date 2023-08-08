#!/bin/bash

NGINX_PATH="/usr/local/nginx/sbin/nginx"
if [ -e $NGINX_PATH ];then
    printf "Start Nginx\n"
    sudo $NGINX_PATH
    # sudo systemctl status nginxc.service
else
    printf "DO NOT EXISTS $NGINX_PATH\n"
fi


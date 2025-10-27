#!/bin/bash -e

main() {
    generate_nginx_conf > /etc/nginx/nginx.conf
}

generate_nginx_conf() {
    echo $CONFIG
}

main

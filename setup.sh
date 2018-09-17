#!/bin/bash

sudo apt-get update

sudo apt install tinyproxy

sudo rm /etc/tinyproxy.conf
sudo cp ~/tinyproxy/tinyproxy.conf /etc/

sudo rm /etc/rc.local
sudo cp ~/tinyproxy/rc.local /etc/


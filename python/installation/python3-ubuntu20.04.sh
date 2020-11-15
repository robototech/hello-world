#!/bin/bash
# -------------------------------------------------------
# A shell script that prints "Hello World" with Python
# Written by: robototech
# Last updated on: 2020
# Sources:
# - https://docs.python.org/
# -------------------------------------------------------
#### Setup
COLOR='\033[0;34m'
NC='\033[0m' # No Color
## Update OS
echo -e "${COLOR}[INFO] | Updating OS ... ${NC}"
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y

## Tools
echo -e "${COLOR}[INFO] | Installing Tools ... ${NC}"
sudo apt install -y tree git build-essential libssl-dev libffi-dev

## Python Tools
echo -e "${COLOR}[INFO] | Installing Python Tools ... ${NC}"
sudo apt install -y python3
sudo apt install -y python3-dev
sudo apt install -y python3-pip
sudo apt install -y python3-venv

#### Demo: HelloWorld - Python
echo -e "${COLOR}[INFO] | Setup Demo ... ${NC}"
git clone https://github.com/robototech/hello-world.git /home/ubuntu/hello-world
cd /home/ubuntu/hello-world/python

mkdir environments
python3 -m venv environments/env1
source environments/env1/bin/activate

echo -e "${COLOR}[INFO] | Demo ... ${NC}"
python3 examples/HelloWorld.py

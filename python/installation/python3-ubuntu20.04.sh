#!/bin/bash
# -------------------------------------------------------
# A shell script that prints "Hello World" with Python 
# Written by: robototech 
# Last updated on: 2020
# Sources:
# - https://docs.python.org/
# -------------------------------------------------------
#### Setup
## Update OS
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y

## Tools
sudo apt install -y tree git build-essential libssl-dev libffi-dev

## Python Tools
sudo apt install -y python3
sudo apt install -y python3-dev
sudo apt install -y python3-pip
sudo apt install -y python3-venv

#### Demo: HelloWorld - Python
git clone https://github.com/robototech/hello-world.git /home/ubuntu/hello-world
cd /home/ubuntu/hello-world/python

mkdir environments
python3 -m venv environments/env1
source environments/env1/bin/activate

python3 examples/HelloWorld.py

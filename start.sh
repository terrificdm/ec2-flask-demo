#!/bin/bash
# Install pip, Flask and git
yum update -y
yum install pip -y
pip install Flask==2.1.0
yum install git -y
# Download app and run it
git clone https://github.com/terrificdm/ec2-flask-demo
cd ec2-flask-demo
nohup python app.py >/dev/null 2>&1 &

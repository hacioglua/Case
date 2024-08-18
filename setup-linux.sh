#!/bin/bash

sudo apt-get update
sudo apt-get install -y docker docker-compose

sudo systemctl start docker

docker-compose up --build -d
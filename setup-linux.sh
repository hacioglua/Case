#!/bin/bash

if ! command -v docker &> /dev/null
then
    echo "Installing Docker"
    sudo apt-get update
    sudo apt-get install -y docker.io
else
    echo "Docker installed."
fi


if ! command -v docker-compose &> /dev/null
then
    echo "Installing Docker Compose..."
    sudo apt-get install -y docker-compose
else
    echo "Docker Compose installed."
fi


if ! systemctl is-active --quiet docker
then
    echo " Starting Docker..."
    sudo systemctl start docker
else
    echo "Docker is already"
fi

docker-compose up --build -d

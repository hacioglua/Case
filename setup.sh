#!/bin/bash

if ! command -v docker &> /dev/null
then
    echo "Docker install"
    brew install --cask docker
fi

if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose install"
    brew install docker-compose
fi

if ! pgrep -x "Docker" > /dev/null
then
    echo "Docker starting..."
    open --background -a Docker
    while ! docker system info > /dev/null 2>&1; do
        echo "Docker waiting..."
        sleep 2
    done
fi

docker-compose up --build
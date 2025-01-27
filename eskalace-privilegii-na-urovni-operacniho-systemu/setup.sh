#!/bin/bash

sudo apt-get update

sudo apt install -y docker.io

sudo systemctl enable docker --now

sudo usermod -aG docker $USER

sudo apt install docker-compose

sudo docker-compose up -d

echo "Instalace Dockeru a Docker Compose byla dokončena."
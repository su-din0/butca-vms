#!/bin/bash

echo "Spouštím aktualizaci systému..."
sudo apt-get update
echo "Instaluji docker.io..."
sudo apt-get install docker.io -y
echo "Spouštím Docker..."
sudo systemctl start docker
echo "Stahuji image bkimminich/juice-shop..."
sudo docker pull bkimminich/juice-shop
echo "Spouštím kontejner bkimminich/juice-shop..."
sudo docker run --rm -p 3000:3000 bkimminich/juice-shop
echo "Hotovo!"
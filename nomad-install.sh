#!/bin/bash
# Installation of Hashicorp Nomad for deploy process 

echo "Initializing script for devops"

NOMAD_VERSION=0.6.3
#CONSUL_VERSION=1.0.0

cd /var/wplex/devops/tmp

#echo "fetching consul..."
#curl -sSL https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip -o consul.zip

echo "Fetching Nomad..."
curl -sSL https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip -o nomad.zip

echo "Installing Nomad..."
unzip nomad.zip
sudo install nomad /usr/bin/nomad

sudo mkdir -p /etc/nomad.d
sudo chmod a+w /etc/nomad.d

echo "Installing autocomplete..."
nomad -autocomplete-install

echo "Creating structure for server-cluster..."

DATA_DIR = "/var/wplex/devops/nomad-hashcorp/server1"

if [ ! -d "$DATA_DIR" ]; then
	sudo mkdir -p "$DATA_DIR"
fi
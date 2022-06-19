#!/bin/bash
# Created by Joelle Nshimba
# Install docker in centos

# remove any old versions / Clean up the system
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

sleep 2
# Install required packages/ Setup the docker repository
yum install -y yum-utils

# Configure docker repository
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sleep 3
# Install Docker-ce
yum install docker-ce docker-ce-cli containerd.io -y

# Start the docker
systemctl start docker

# Enable the service for it to start at reboot
systemctl enable docker

sleep 2
# Check the status of the deamon
systemctl status docker

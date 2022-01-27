#!/bin/bash

sudo mount /dev/nvme1n1 /data
cd /data/docker/gitlab
docker-compose up -d
cd ../jenkins
docker-compose up -d

#!/bin/bash

sudo apt update
sudo apt install -y docker.io
sudo apt install -y net-tools
sudo apt install -y docker-compose
sudo usermod -aG docker ubuntu
sudo docker pull gitlab/gitlab-ce:latest

sudo apt install -y mosh


sudo mkdir /data

# 使用lsblk查看可用的磁盘，示例如下，其中，nvme1n1就是数据盘，另外nvme0n1是系统盘，需要持久化的数据，需要放在数据盘。
# NAME        MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
# loop0         7:0    0   25M  1 loop /snap/amazon-ssm-agent/4046
# loop1         7:1    0 61.9M  1 loop /snap/core20/1242
# loop2         7:2    0 67.2M  1 loop /snap/lxd/21835
# loop3         7:3    0 42.2M  1 loop /snap/snapd/14066
# loop4         7:4    0 55.5M  1 loop /snap/core18/2253
# nvme0n1     259:0    0   20G  0 disk
# └─nvme0n1p1 259:1    0   20G  0 part /
# nvme1n1     259:2    0   30G  0 disk /data

#sudo mount /dev/nvme1n1 /data
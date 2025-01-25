#!/bin/bash
DATE=$(date +"%Y-%m-%d")
JENKINS_HOME="/home/ec2-user/jenkins_home"
BACKUP_DIR="/home/ec2-user/backup"
CONTAINER_NAME="jenkins"

tar -czvf ${BACKUP_DIR}/jenkins_home_${DATE}.tar.gz ${JENKINS_HOME}
#!/bin/bash
DATE=$(date +"%Y-%m-%d")
JENKINS_HOME="/home/ec2-user/jenkins_home"
BACKUP_DIR="/home/ec2-user/backup"
CONTAINER_NAME="jenkins"
BACKUP_FILE = "${BACKUP_DIR}/jenkins_home_${DATE}.tar.gz"

tar -czvf ${BACKUP_FILE} ${JENKINS_HOME}
aws s3 cp ${BACKUP_FILE} s3://earlybird-jenkins-backup
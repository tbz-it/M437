#!/bin/bash
#  
# OS Ticket und MySQL starten
#

# Create local directory in VM which contains the Mysql DB
sudo mkdir /mysqldata
sudo chown 999:999 /mysqldata

export KUBECONFIG=$HOME/.kube/config
kubectl apply -f ~/M437/secrets.yaml
kubectl apply -f ~/M437/mysql.yaml
kubectl apply -f ~/M437/osticket.yaml

mkdir -p ~/data/backup_daily ~/data/backup_hourly
cp ~/M437/scripts/backup.bash ~/data/backup_daily
cp ~/M437/scripts/backup.bash ~/data/backup_hourly
crontab -u ubuntu ~/M437/crontab.ubuntu

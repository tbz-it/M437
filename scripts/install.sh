#!/bin/bash
#  
# OS Ticket und MySQL starten
#
# TODO Datenbank auf $HOME/data/mysql = Rack Server ablegen

export KUBECONFIG=$HOME/.kube/config
kubectl apply -f ~/M437/secrets.yaml
kubectl apply -f ~/M437/mysql.yaml
kubectl apply -f ~/M437/osticket.yaml

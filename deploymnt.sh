#!/bin/bash

AWS_CONFIG_FILE="~/.aws/config"

n=4;#the variable that I want to be incremented
next_n=$[$n+3]
sed -i "/#the variable that I want to be incremented$/s/=.*#/=$next_n;#/" ${0}
echo $next_n


#cd /root/ansible_flight
ansible-playbook ec2.yml --extra-vars "script=$1"
sleep 10m
ansible-playbook ec2_ami.yml --extra-vars "name=$1 version=$next_n"

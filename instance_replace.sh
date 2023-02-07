#!/bin/bash

a=`awk '{print $9}' /var/lib/jenkins/workspace/Deployment/instance_details | cut -b 2-20`
i=`grep "instance_id" /var/lib/jenkins/workspace/Deployment/ec2_ami.yml | cut -b 22-40`
sed -i "s/$i/$a/g" /var/lib/jenkins/workspace/Deployment/ec2_ami.yml

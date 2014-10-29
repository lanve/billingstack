#!/usr/bin/env bash

# script to help with BS

# Dependencies:
# - functions


#Create group and user

groupadd billingstack

useradd -g billingstack billingstack

#Create directory

mkdir -p /var/log/billingstack
mkdir -p /etc/billingstack
mkdir -p /var/lock/billingstack
mkdir -p /var/run/billingstack

chown -R billingstack:billingstack /var/log/billingstack
chown -R billingstack:billingstack /etc/billingstack
chown -R billingstack:billingstack /var/lock/billingstack
chown -R billingstack:billingstack /var/run/billingstack

#Add Service

cp -rf billingstack-api        /etc/init.d
cp -rf billingstack-biller     /etc/init.d
cp -rf billingstack-central    /etc/init.d
cp -rf billingstack-collector  /etc/init.d
cp -rf billingstack-rater      /etc/init.d

chkconfig -add billingstack-api
chkconfig -add billingstack-biller
chkconfig -add billingstack-central
chkconfig -add billingstack-collector
chkconfig -add billingstack-rater


#List Service

service  billingstack-api        start
service  billingstack-biller     start
service  billingstack-central    start
service  billingstack-collector  start
service  billingstack-rater      start


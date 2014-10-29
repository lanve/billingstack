#!/usr/bin/env bash

# script to help with BS

# Dependencies:
# - functions


#Create group and user

groupdel billingstack

userdel  billingstack 

#Create directory

rm -rf  /var/log/billingstack
rm -rf  /etc/billingstack
rm -rf  /var/lock/billingstack
rm -rf  /var/run/billingstack

#Delete Service
chkconfig -del billingstack-api
chkconfig -del billingstack-biller
chkconfig -del billingstack-central
chkconfig -del billingstack-collector
chkconfig -del billingstack-rater


rm -rf  /etc/init.d/billingstack-api
rm -rf  /etc/init.d/billingstack-biller
rm -rf  /etc/init.d/billingstack-central
rm -rf  /etc/init.d/billingstack-collector
rm -rf  /etc/init.d/billingstack-rater

#!/bin/sh
mysql -uroot -p123456 <<EOF

use billingstack;
delete from merchant;
delete from contact_info;
delete from currency;
delete from customer;
delete from customer_info;
delete from language;
delete from payment_method;
delete from pg_config;  
delete from pg_method;       
delete from pg_provider;
delete from plan;     
delete from plan_item;
delete from plan_property;
delete from product;          
delete from product_property;
delete from subscription;   

exit
EOF

#!/bin/sh
mysql -uroot -p123456 <<EOF

use billingstack;
select * from merchant;
select * from contact_info;
select * from currency;
select * from customer;
select * from customer_info;
select * from language;
select * from payment_method;
select * from pg_config;  
select * from pg_method;       
select * from pg_provider;
select * from plan;     
select * from plan_item;
select * from plan_property;
select * from product;          
select * from product_property;
select * from subscription;   

exit
EOF

#/bin/bash

echo "--------------------------------create merchants------------------------"
#curl -i -X POST -H 'Content-Type: application/json' -d '{
#        "name":"Merchant X",
#        "language":"nor",
#	"currency":"EUR",
#	"user" : {
#	  "username" : "luis",
#	  "password" : "secret0"
#	}
#}' http://localhost:9001/v2/merchants
#

#curl -i -X POST -H 'Content-Type: application/json' -d '{
#        "name":"Merchant X",
#        "language":"nor",
#	"currency":"EUR",
#	"user" : {
#	  "username" : "luis",
#	  "password" : "secret0"
#	}
#}' http://localhost:9001/v2/merchants
#

curl -i -X POST -H 'Content-Type: application/json' -d '{
	"name" : "stacksherpa",
        "language":"nor",
	"currency" : "nok",
	"user" : {
	  "username" : "luis",
	  "password" : "secret0"
	}
}' http://localhost:9001/v2/merchants
echo "\n"
echo "\n"


echo "--------------------------------list merchants---------------------------"
curl -i -X GET http://10.86.11.182:9001/v2/merchants
echo "\n"
echo "\n"



echo "--------------------------------list currencies---------------------------"
curl -i -X GET http://10.86.11.182:9001/v2/currencies
echo "\n"
echo "\n"

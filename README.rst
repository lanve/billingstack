BillingStack
============

Site: www.billingstack.org

Docs: http://billingstack.rtfd.org
Github: http://github.com/stackforge/billingstack
Bugs: http://launchpad.net/billingstack


Install:

1. Clone the repo
git clone https://github.com/lanve/billingstack

2.Change directory to the BS directory
cd billingstack

3.Build and install
python install .

4.Create database in Mysql named 'billingstack',to create the database, complete these steps:

    a. Use the database access client to connect to the database server as the root user:

    $ mysql -u root -p

    b. Create the nova database:

    CREATE DATABASE billingstack;

    c. Grant proper access to the billingstack database:

    GRANT ALL PRIVILEGES ON billingstack.* TO 'billingstack'@'localhost' IDENTIFIED BY 'billingstack_password';
    GRANT ALL PRIVILEGES ON billingstack.* TO 'billingstack'@'%' IDENTIFIED BY 'billingstack_password';

    Replace  billingstack_password with a suitable password.
    
    d. Exit the database access client.

5. Configure    

  $ cp   etc/billingstack/billingstack.conf.sample  /etc/billingstack.conf


  Edit the /etc/billingstack.conf file and complete the following actions:

  a. In the [DEFAULT] section, configure RabbitMQ message broker access:

    [DEFAULT]
    ...
    rabbit_host = controller
    rabbit_password = RABBIT_PASS
    
    Replace RABBIT_PASS with the password you chose for the guest account in RabbitMQ.


  b. In the [central:sqlalchemy],[biller:sqlalchemy],[rater:sqlalchemy] section, configure database access:

    ...
    database_connection = mysql://billingstack:billingstack_password@localhost:3306/billingstack 


  c. In the [service:api] section,configure address to bind the API server:
    
    ...
    api_listen='0.0.0.0'
    api_port=9001   
    
    Replace '0.0.0.0' with the IP address you chose, replace 9001 with the port you chose.

6. Initialization data
   a.  Create tables in database billingstack:
   $ python  tools/resync_storage.py
   
   b.  Initialization and load samples data:
   $ python  tools/load_samples.py
   
   You may run "sh tools/viewData.sh" to view the data

7. Run and test
   

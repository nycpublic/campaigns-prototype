#!/bin/bash
wp_config() {
  awk -F\' '/'$1'/ { print $4; }' ../wordpress/wp-config.php
}

username=$(wp_config DB_USER)
password=$(wp_config DB_PASSWORD)
database=$(wp_config DB_NAME)
host="127.0.0.1"

mysql --host=${host} --user=root <<EOQ
create database if not exists ${database};
grant all on ${database}.*  to '${username}'@'${host}' identified by '${password}';
EOQ

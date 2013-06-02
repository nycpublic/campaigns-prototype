#!/bin/bash
wp_config() {
  awk -F\' '/'$1'/ { print $4; }' ../wordpress/wp-config.php
}

today=$(date +'%Y-%m-%d')
filename="dumps/wordpress-db-${today}.sql"
mkdir -p $(dirname "$filename")
username=$(wp_config DB_USER)
password=$(wp_config DB_PASSWORD)
database=$(wp_config DB_NAME)
host=$(wp_config DB_HOST)

mysqldump "--user=${username}" "--password=${password}" "--host=${host}" \
  --set-gtid-purged=OFF --opt "${database}" \
  > "$filename"
echo $filename

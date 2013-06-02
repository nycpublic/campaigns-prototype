#!/bin/bash
LOCAL_DB="127.0.0.1"
LOCAL_WEB="http://localhost"

wp_config() {
  awk -F\' '/'$1'/ { print $4; }' ../wordpress/wp-config.php
}

today=$(date +'%Y-%m-%d')
filename="dumps/wordpress-db-${today}.sql"
username=$(wp_config DB_USER)
password=$(wp_config DB_PASSWORD)
database=$(wp_config DB_NAME)

local_mysql() {
  mysql "--user=${username}" "--password=${password}" "--host=${LOCAL_DB}" "--database=${database}" $@
}

local_mysql < "$filename"
REMOTE_WEB=$(local_mysql --skip-column-names <<EOQ
select option_value
  from wp_options
  where option_name = 'siteurl';
EOQ)

local_mysql <<EOQ
update wp_options set option_value = replace(option_value, '$LOCAL_WEB', '$REMOTE_WEB')
where option_name = 'home'
   or option_name = 'siteurl';
update wp_posts set guid = replace(guid, '$LOCAL_WEB', '$REMOTE_WEB');
update wp_posts set post_content = replace(post_content, '$LOCAL_WEB', '$REMOTE_WEB');
EOQ

echo "Loaded production dump into local database on $LOCAL_DB. Site URL transformed to $LOCAL_WEB."

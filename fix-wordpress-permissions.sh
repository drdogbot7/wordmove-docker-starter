#!/bin/bash
#
# This script configures WordPress file permissions based on recommendations
# from http://codex.wordpress.org/Hardening_WordPress#File_permissions
#

WS_GROUP=www-data # <-- webserver group

echo "Fixing Wordpress Permissions…"

echo "Setting group to ${WS_GROUP}"
chgrp -R ${WS_GROUP} wp-content

echo "Setting directory permissions to 775"
find wp-content -type d ! -path '*/\.git/*' ! -path '*/\node_modules/*' -exec chmod 775 {} \;

echo "Setting file permissions to 664"
find wp-content -type f ! -path '*/\.git/*' ! -path '*/\node_modules/*' -exec chmod 664 {} \;

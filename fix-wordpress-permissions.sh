#!/bin/bash
#
# This script configures WordPress file permissions based on recommendations
# from http://codex.wordpress.org/Hardening_WordPress#File_permissions
#

WS_GROUP=www-data # <-- webserver group

echo "Fixing Wordpress Permissions…"

echo "Setting group to ${WS_GROUP}"
find wp-content -exec chgrp ${WS_GROUP} {} \;

echo "Setting directory permissions to 775"
find wp-content -type d -not -path '*/\.git/*' -exec chmod 775 {} \;

echo "Setting file permissions to 664"
find wp-content -type f -not -path '*/\.git/*' -exec chmod 664 {} \;

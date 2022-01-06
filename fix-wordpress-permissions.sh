#!/bin/bash
#
# This script configures WordPress file permissions based on recommendations
# from http://codex.wordpress.org/Hardening_WordPress#File_permissions
#

echo "Fixing Wordpress Permissions…"

echo "Setting ownership to ${SUDO_USER:-$USER}:www-data"
chown -R ${SUDO_USER:-$USER}:www-data wp-content

echo "Setting directory permissions to 775"
find wp-content -type d ! -path '*/\.git/*' ! -path '*/\node_modules/*' -exec chmod 775 {} \;

echo "Setting file permissions to 664"
find wp-content -type f ! -path '*/\.git/*' ! -path '*/\node_modules/*' -exec chmod 664 {} \;

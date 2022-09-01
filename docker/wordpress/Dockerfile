# 
# Installs WordPress with wp-cli (wp.cli.org) installed
# Based on: https://github.com/conetix/docker-wordpress-wp-cli

FROM wordpress:php8.0

# Install less and mysql-client utilities 
RUN apt-get update && apt-get install -y less default-mysql-client

# Add WP-CLI 
RUN curl -o /bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /bin/wp

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
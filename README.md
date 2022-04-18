# wordmove-docker-starter
Starter project for developing wordpress sites with docker-compose, wp-cli and wordmove.

## Requirements
- docker
- docker-compose

## Start test server
```
docker-compose up
```

## adding a theme as a submodule
```
git submodule add -b master https://github.com/user/theme-reop.git wp-content/themes/theme-name
```

`wp-content` folder will be created when first running `docker-compose up`.

## repairing permissions
Run the script `fix-wordpress-permissions.sh` from the host machine if (when) wordpress can't write to wp-content. There is probably a way to have docker use the correct permissions in the first place but ¯\\_(ツ)_/¯

```sh
sudo ./fix-wordpress-permissions.sh
```

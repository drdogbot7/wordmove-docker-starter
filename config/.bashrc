# This is necessary to get the SSH keys from the host environment workingin the docker container.
# https://github.com/welaika/docker-wordmove/issues/12#issuecomment-504312682
eval `ssh-agent -s` && ssh-add /root/.ssh/id_rsa
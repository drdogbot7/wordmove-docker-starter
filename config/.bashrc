# This is necessary to get the SSH keys working. Sorta kludgy.
# https://github.com/welaika/docker-wordmove/issues/12#issuecomment-504312682
eval `ssh-agent -s` && ssh-add /root/.ssh/id_rsa
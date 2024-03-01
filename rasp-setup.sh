#! /bin/sh

apt update

apt upgrade -y

do-release-upgrade

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh ./get-docker.sh

sudo usermod -aG docker $USER

exit
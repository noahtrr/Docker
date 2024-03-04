#! /bin/sh

home="$(getent passwd $SUDO_USER | cut -d: -f6)"

apt update

apt upgrade -y

do-release-upgrade

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh ./get-docker.sh

sudo usermod -aG docker $USER

git clone https://github.com/Lierexa/Docker.git

sudo cp $home/Docker/Configs/'Raspberry Pi Setup Script'/resolved.conf /etc/systemd/resolved.conf

echo "The device will reboot in 5 seconds\n Press CTRL+C to abort"

sleep 5

reboot
#! /bin/sh

apt update

apt upgrade -y

do-release-upgrade

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh ./get-docker.sh

sudo usermod -aG docker $USER

git clone https://github.com/Lierexa/Docker.git

sudo cp $HOME/Docker/Configs/'Raspberry Pi Setup Script'/resolved.conf /etc/systemd/resolved.conf

echo "You Should reboot your Device for the needed changes to take effect"

exit
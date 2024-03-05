#1 Clone the repository with:
```
git clone https://github.com/Lierexa/Docker.git
```
#2 Navigate to the Directory with:
```
cd Docker/Configs/'Raspberry Pi Setup Script'/
```
#3 Execute the setup script with: 
```
sudo sh ./rasp-setup.sh
```

#4 Execute the following command and reconnect after

```
sudo usermod -aG docker $USER
```

#5 Go and Deploy the Stacks / Containers you want

#6 To Deploy a compose file do:
```
docker compose up -d
```

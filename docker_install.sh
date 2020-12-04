sudo apt-get remove docker docker-engine docker.io containerd runc 
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates 
sudo apt-get install curl
sudo apt-get install gnupg-agent 
sudo apt-get install software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs)    stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
docker ps
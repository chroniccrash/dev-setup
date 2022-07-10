sudo apt install curl
sudo apt-get install -y nodejs
sudo apt install -y npm
#curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
nvm install node
sudo npm install npm@latest -g
sudo npm install -g @angular/cli
npm --version

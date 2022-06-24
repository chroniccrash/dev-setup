sudo apt-get install git -y
git --version
read -p 'Git Email: ' gitEmail
read -p 'Git Name: ' gitName
curDir=$(pwd)
sshLocation=~/.ssh/
cd $sshLocation
ssh-keygen -t ed25519 -C "$gitEmail" -f $sshLocation/git_original
eval "$(ssh-agent -s)"
ssh-add $sshLocation/git_original
cd $curDir
ssh -T git@github.com
git config --global user.email "$gitEmail"
git config --global user.name "$gitName"
git config --global init.defaultBranch main

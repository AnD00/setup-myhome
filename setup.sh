#!/bin/bash

echo 'start setup myhome ****************************************'

echo 'install xcodebuild ****************************************'
sudo xcodebuild -license

echo 'install commandline tools *********************************'
xcode-select --install

echo 'install homebrew ******************************************'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
source ~/.zshrc
brew update

echo 'install ansible *******************************************'
brew install ansible
brew upgrade ansible

echo 'run ansible-playbook **************************************'
ansible-playbook local.yml -i hosts

echo 'cleanup libs **********************************************'
brew cleanup

#!/bin/bash

echo 'start setup myhome ****************************************'

echo 'install xcodebuild ****************************************'
sudo xcodebuild -license

echo 'install commandline tools *********************************'
xcode-select --install

echo 'install homebrew ******************************************'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo 'install ansible *******************************************'
brew install ansible
brew upgrade ansible

echo 'run ansible-playbook **************************************'
ansible-playbook local.yml -i hosts

echo 'cleanup libs **********************************************'
brew cleanup

#!/usr/bin/env bash

## Correct directory permissions
echo 'Correcting brew directory permissions (requires root password)'
sudo chown -R $(whoami) /usr/local/bin
sudo chown -R $(whoami) /usr/local/share

## Install or Update Homebrew
echo 'Installing or Updating Homebrew...'
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi
echo -e "\n\n"

## Install or Update Ansible
echo 'Installing or Updating Ansible...'
which -s ansible-playbook
if [[ $? != 0 ]] ; then
    brew install ansible
fi
echo -e "\n\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ansible-galaxy install -r "$DIR/../requirements.yml"

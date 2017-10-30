# osx-setup-ansible
Setting up a Mac with an ansible script.

Refined from
https://github.com/pameck/osx-setup-ansible/blob/master/setup.sh

This script has been tested on OSX Sierra 10.12.6.

## Before Install

Update macOS to latest

## Install
Download and unzip this repository to a mac which has been reset to factory settings.
```bash
$ curl -sL https://github.com/vasilly/osx-ansible-setup/archive/master.tar.gz | tar xz
```

Go to the folder of the repository
```bash
$cd osx-ansible-setup
```

## Usage
```bash
$sh setup.sh
```
You will need to input your password in order to install pip and ansible.

## Roles

0. install software
  modify *osx-ansible-setup/vars/software-to-install.yml* to add software/packages
  you wish to install.  Atom packages are installed with apm. Other software
  is either installed with brew, brew/cask, or npm.  You can search for software you wish to install at
  *https://caskroom.github.io/search* or *http://brewformulas.org/*

0. dev-tools
  - Atom packages
  - Node
  - npm packages
  - Sublime (Adds a symlink to open files and folders with 'sublime' from the terminal)
  - Installs software using Brew or Brew/Casks

0. git

  Installs git, sets the global config and adds some of alias to bash_profile. Set your email and name in *roles/git/defaults/main.yml*

0. mac-preferences
  Change some mac settings

## Future Work

- Source bash_profile once created
- Import ansible galaxy playbook that checks if Atom packages are not installed, Before
installing

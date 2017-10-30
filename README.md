# osx-setup-ansible
Setting up a Mac with a single script.
Bulk taken from
https://github.com/pameck/osx-setup-ansible/blob/master/setup.sh
with refinements.

This script has been tested on OSX El Capitan.

## Before Install

Update macOS to latest

## Install
Download and unzip this repository to an empty computer
```bash
$ curl -sL https://github.com/pameck/osx-setup-ansible/archive/master.tar.gz | tar xz
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

0. install casks
  - ...

0. dev-tools
  - iTerm2
  - Sublime (Adds a symlink to open files and folders with 'sublime' from the terminal)
  - VirtualBox
  - Vagrant

0. git

  This role installs git, sets the global config and adds some of alias to bash_profile. Set your email and name in *roles/git/defaults/main.yml*

## Future Work

- Source bash_profile once created
- Setting up iTerm2 preferences

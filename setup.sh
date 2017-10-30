#!/bin/bash

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "✓\n$fmt\n" "$@"
}

fancy_echo "Boostrapping ..."

if ! command -v cc >/dev/null; then
  fancy_echo "Installing xcode ..."
  xcode-select --install
else
  echo "Xcode already installed. Skipping."
fi

if ! command -v pip >/dev/null; then
  echo "Installing pip"
  sudo easy_install pip
else
  echo "pip already installed. Skipping."
fi


# echo "Installing pip"
# which pip  > /dev/null &&  echo "pip already installed"
# which pip  > /dev/null || sudo easy_install pip
# echo "Installing pip done."

# sudo pip install --upgrade pip

echo "Upgrading setuptools and pip"
pip install --upgrade setuptools --user python --upgrade pip
echo "Upgrading setuptools done."

# echo "Installing ansible"
# sudo pip install ansible
# echo "Installing ansible done."
if ! command -v ansible >/dev/null; then
  echo "Installing Ansible ..."
  sudo pip install ansible
else
  echo "Ansible already installed. Skipping."
fi

# if ! command -v beautysh >/dev/null; then
#   echo "Installing beautysh ..."
#   pip install beautysh
# else
#   echo "beautysh already installed. Skipping."
# fi

# touch ~/.bash_profile
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

ansible-playbook -i "localhost," -c local setup-all-the-things.yml

# To activate nvm, you need to source it from your shell:
# nothing works!!
# . ~/.nvm/nvm.sh
. ~/.bash_profile

# make z jump available
# . /usr/local/etc/profile.d/z.sh #once again didn't work had to manually"
# source "$(brew --prefix)/etc/profile.d/z.sh"
source /usr/local/etc/profile.d/z.sh

# reset

#/bin/bash
set -e

sudo pip install -U pip

FILE_DIR=`dirname "$(stat -f "$0")"`

if !(ansible --version | grep -qF 2.1.2.0 ); then
    sudo pip install ansible==2.1.2.0
fi

cd $FILE_DIR/playbooks
#ansible-galaxy install -r requirements.yml
ansible-playbook bootstrap.yml "$@"

echo
echo "Be sure to set iTerm2 font to 'Meslo LG M for Powerline'"

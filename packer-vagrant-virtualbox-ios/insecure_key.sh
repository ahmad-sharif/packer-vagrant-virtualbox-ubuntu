#!/bin/bash
sleep 30
set -e

# Set up insecure key (standard Vagrant practice)
sudo mkdir ~vagrant/.ssh
sudo chmod 700 ~vagrant/.ssh
sudo wget --no-check-certificate 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' -O ~vagrant/.ssh/authorized_keys
sudo chmod 600 ~vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant ~vagrant/.ssh

sudo apt-get update -y -qq
sudo apt-get install -y -q virtualbox-guest-utils virtualbox-guest-dkms
sudo apt-get install -y -q linux-headers-generic
sudo apt-get install -y -q build-essential dkms
sudo apt-get install -y -q ruby sqlite3 libsqlite3-dev ruby-dev
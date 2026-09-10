#!/bin/bash
cd
sudo xbps-install -Sy curl tar gzip
sudo mkdir /usr/share/desktop-directories/
curl -sSO https://downloads.1password.com/linux/tar/stable/x86_64/1password-latest.tar.gz
sudo tar -xf 1password-latest.tar.gz
sudo mkdir -p /opt/1Password && sudo mv 1password-*/* /opt/1Password
sudo /opt/1Password/after-install.sh
rm -rf 1password-*/
rm 1password-latest.tar.gz

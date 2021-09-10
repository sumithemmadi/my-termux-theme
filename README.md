# My-termux-theme
  <b>Termux-theme</b>
## Install Packages
```bash
apt update -y
apt upgrade -y
apt install git termux-api termux-tools -y
```
## Quick Setup
```bash
git clone https://github.com/sumithemmadi/my-termux-theme
rm -v $HOME/.termux
cp -vrf my-termux-theme/* .termux
termux-reload-settings
sleep 10
exit
```

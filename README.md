# My-termux-theme
  <b>Termux-theme</b>
## Install Packages
```bash
apt update -y
apt upgrade -y
apt install git termux-api termux-tools neofetch -y
```
## Quick Setup
```bash
git clone https://github.com/sumithemmadi/my-termux-theme
bash $HOME/my-termux-theme/setup.sh
exit
```
## Or 
```bash
git clone https://github.com/sumithemmadi/my-termux-theme
rm -rf $HOME/.termux
cp -vrf $HOME/my-termux-theme/ $HOME/.termux
termux-reload-settings
sleep 2
echo -v "clear" >> $PREFIX/etc/bash.bashrc
echo -v "neofetch" >> $PREFIX/etc/bash.bashrc
exit
```

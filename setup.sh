mkdir .termux
cp -vrf $HOME/my-termux-theme/* $HOME/.termux
termux-reload-settings
cp -vrf $HOME/.bashrc $HOME/.bashrc.back
echo "Createing .bashrc.back file for .bashrc"
sleep 5
cp -vrf $HOME/my-termux-theme/.bashrc $HOME
sleep 2

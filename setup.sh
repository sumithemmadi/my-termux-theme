rm -vr $HOME/.termux
cp -vrf $HOME/my-termux-theme/ $HOME/.termux
termux-reload-settings
sleep 2
echo -v "clear" >> $PREFIX/etc/bash.bashrc
echo -v "neofetch" >> $PREFIX/etc/bash.bashrc
exit

mkdir .termux
cp -vrf $HOME/my-termux-theme/* $HOME/.termux
termux-reload-settings

FILE=$HOME/.bashrc.back
if [ -f "$FILE" ]; then
    echo "$FILE exist."
    echo "\033[0;31mBackup already saved as  \033[0;32m.bashrc.back\n"

else 
    echo "$FILE does not exist."
    cp -vrf $HOME/.bashrc $HOME/.bashrc.back
fi
printf "\n\n\033[0;31mCreated \033[0;32m.bashrc.back \033[0;31mfile for \033[0;32m.bashrc\n"
sleep 5
printf "\n\033[0;31mCreating \033[0;32m.bashrc"
cp -rf $HOME/my-termux-theme/.bashrc $HOME
clear
neofetch
printf "\n\033[0;32m ==> Created \033[0;31m.bashrc.back \033[0;32mfile for \033[0;31m.bashrc"
printf "\n\033[0;32m ==> Enter '\033[0;31mexit\033[0;32m' command ,close all the tabs and reopen termux again\n"
printf "\n\033[0;32m ==> Enter '\033[0;31mCloselose all the tabs and reopen termux again\n"
sleep 5

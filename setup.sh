#!/bin/bash
## MIT License

## Copyright (c) 2021 Emmadi Sumith Kumar

## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:

## The above copyright notice and this permission notice shall be included in all
## copies or substantial portions of the Software.

## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
## SOFTWARE.


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

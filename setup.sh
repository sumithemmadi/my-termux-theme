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

rm -rf $PREFIX/etc/motd
rm -rf $PREFIX/etc/motd-playstore

FILE=$HOME/.bashrc.save
if [ -f "$FILE" ]; then
    echo "$FILE exist."
    echo -e "\033[0;31m\n\n\nBackup for \033[0;32m.bashrc \033[0;31malready saved as  \033[0;32m.bashrc.save"

else 
    echo "$FILE does not exist."
    cp -vrf $HOME/.bashrc $HOME/.bashrc.save
    echo -e "\n\n\033[0;31mCreated backup as\033[0;32m.bashrc.save \033[0;31mfile for \033[0;32m.bashrc\n"
fi


sleep 10
printf "\033[0;31mwait\...nCreating \033[0;32m.bashrc"
cp -rf $HOME/my-termux-theme/.bashrc $HOME

clear
neofetch
printf "\n\033[0;32m==> Created \033[0;31m.bashrc.save \033[0;32mfile for \033[0;31m.bashrc"
printf "\n\033[0;32m==> Enter '\033[0;31mexit\033[0;32m' command"
printf "\n\033[0;32m==> Close all the tabs and reopen termux again\n"
export PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"\[\033[0;31m\][\[\033[0;35m\]\342\234\227\[\033[0;31m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;34m\]root\[\033[01;33m\]@\[\033[0;34m\]\h'; else echo '\[\033[0;34m\]\u\[\033[01;33m\]@\[\033[0;34m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274\[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"
sleep 5

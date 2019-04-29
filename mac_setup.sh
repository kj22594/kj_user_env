#!/bin/bash

xargs brew install < brew_requirements.txt

brew tap caskroom/cask
xargs brew cask install < cask_requirements.txt


curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh


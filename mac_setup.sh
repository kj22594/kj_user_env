#!/bin/bash

brew tap dnote/dnote
brew tap caskroom/cask

xargs brew install < brew_requirements.txt

xargs brew cask install < cask_requirements.txt

# https://github.com/riobard/bash-powerline
curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh


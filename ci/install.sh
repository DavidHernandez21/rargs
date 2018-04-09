#!/bin/bash

case $TRAVIS_OS_NAME in
    linux)
        sudo add-apt-repository -y ppa:jonathonf/python-3.6
        sudo apt-get update
        sudo apt-get -y install python3.6
        python3.6 -V
        stty cols 80
        ;;
    osx)
        brew install python3
        python3 -V
        brew install coreutils
        ;;
esac

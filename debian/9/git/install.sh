#!/usr/bin/env bash
# https://git-scm.com/download/linux
apt update
apt-get install software-properties-common python-software-properties
add-apt-repository ppa:git-core/ppa
apt install git

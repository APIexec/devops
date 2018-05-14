#!/usr/bin/env bash

#1: Delete old php 5.6 (if installed)
# First, list all installed old php 5.x packages, enter:
$ dpkg --list | grep php | awk '/^ii/{ print $2}'
# To delete old php 5.6 packages, enter:
x="$(dpkg --list | grep php | awk '/^ii/{ print $2}')"
sudo apt-get --purge remove $x
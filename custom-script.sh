#!/usr/bin/env bash

set -eux

# Sample custom configuration script - add your own commands here
# to add some additional commands for your environment
#
# For example:
# dnf install -y curl wget git tmux firefox xvfb

dnf update -y

dnf install -y @base-x
dnf install -y @lxde-desktop
dnf install -y @Fonts
dnf install -y python2 python2-dnf libselinux-python bzip2 chromium
dnf install -y convert-to-edition curl git gzip keepassx lsof nmap subversion
dnf install -y sudo sysstat tar unzip vim wget which zip lxdm

convert-to-edition -p -e workstation

dnf update -y

#systemctl set-default graphical.target

systemctl enable sshd

systemctl start sshd

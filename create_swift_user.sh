#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]
then
	echo "Please run as root"
	exit 1
fi

echo "Setting up swift user"
groupadd swift
useradd -g swift -s /bin/bash -m swift
umask 226 && echo "swift ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/50_swift_sh

echo Done!

#!/bin/sh
echo "instance-id: $(uuidgen || echo i-abcdefg)" > ~/.dotfiles/vm/debian-generic-meta
cloud-localds boot-generic.img ~/.dotfiles/vm/debian-generic.yml ~/.dotfiles/vm/debian-generic-meta
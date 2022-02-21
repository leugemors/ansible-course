#!/usr/bin/env bash

    #--size 20G \

sudo virt-builder ubuntu-20.04 \
    --output /data/images/ubuntu-template.qcow2 \
    --format qcow2 \
    --hostname ubuntu-template \
    --timezone Europe/Amsterdam \
    --update \
    --install cockpit \
    --install cockpit-storaged \
    --firstboot-command 'systemctl enable --now cockpit.socket' \
    --firstboot-command 'echo "Hello, World!"' \
    --root-password password:secret

sudo virt-install \
    --name ubuntu-template \
    --os-variant ubuntu20.04 \
    --vcpus 1 \
    --ram 1024 \
    --disk /data/images/ubuntu-template.qcow2,format=qcow2 \
    --nographics \
    --import \
    --network type=default


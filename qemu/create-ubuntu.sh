#!/usr/bin/env bash

name="ubuntu-template"
memory=1024
cpu=1

virt-install \
    --name $name \
    --ram $memory \
    --vcpus $cpu \
    --disk path=/data/images/$name.qcow2,size=20 \
    --os-type linux \
    --os-variant ubuntu20.04 \
    --console pty,target_type=serial \
    --cdrom /data/files/iso/ubuntu-20.04.3-live-server-amd64.iso

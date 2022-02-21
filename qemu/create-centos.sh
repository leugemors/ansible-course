#!/usr/bin/env bash

name="centos-template"
memory=1024
cpu=1

virt-install \
    --name $name \
    --ram $memory \
    --vcpus $cpu \
    --disk path=/data/images/$name.qcow2,size=20 \
    --os-type linux \
    --os-variant centos8 \
    --console pty,target_type=serial \
    --cdrom /data/files/iso/centos-stream-9-latest-x86_64-dvd1.iso

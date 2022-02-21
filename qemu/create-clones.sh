#!/usr/bin/env bash

clones="01 02 03"

# ubuntu
for clone in $clones; do
    virt-clone \
        --original ubuntu-template \
        --name ubuntu-$clone \
        --file /data/images/ubuntu-$clone.qcow2
    sudo virt-sysprep -d ubuntu-$clone
done

clones="01 02"

# centos
for clone in $clones; do
    virt-clone \
        --original centos-template \
        --name centos-$clone \
        --file /data/images/centos-$clone.qcow2
    sudo virt-sysprep -d centos-$clone
done

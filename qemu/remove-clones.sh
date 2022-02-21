#!/usr/bin/env bash

clones="01 02 03"

for clone in $clones; do
    virsh undefine --domain ubuntu-$clone --remove-all-storage
done

clones="01 02"

for clone in $clones; do
    virsh undefine --domain centos-$clone --remove-all-storage
done

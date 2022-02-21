#!/usr/bin/env bash

clones="01 02 03"

for clone in $clones; do
    virsh start ubuntu-$clone
done

clones="01 02"

for clone in $clones; do
    virsh start centos-$clone
done

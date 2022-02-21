#!/usr/bin/env bash

clones="01 02 03"

for clone in $clones; do
    virsh shutdown ubuntu-$clone
done

clones="01 02"

for clone in $clones; do
    virsh shutdown centos-$clone
done

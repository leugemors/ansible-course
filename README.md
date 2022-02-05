# Ansible Course

Just to play around with **Ansible** stuff I'm trying out.

### Some ad-hoc ansible commands

> ansible all --key-file ~/.ssh/id_cursus -i inventory.cfg -m ping

### settings as default value in ansible.cfg file

This is not just a ping, but an actual connection with the servers.

> ansible all -m ping

List all hosts in our inventory.

> ansible all --list-hosts

Gather all sorts of information from our servers.

> ansible all -m gather_facts

Same as above, but now we only look at one server.

> ansible all -m gather_facts --limit 192.168.122.147

Update the local update cash: apt update.

> ansible all -m apt -a update_cache=true --become --ask-become-pass

Install the package mc: apt install mc.

> ansible all -m apt -a "name=mc state=latest" --become --ask-become-pass

Install al availabe updates: apt dist-upgrade.

> ansible all -m apt -a upgrade=dist --become --ask-become-pass

Nice!

[![](https://img.shields.io/badge/Linter-google_yamlfmt-blue.svg)](https://github.com/google/yamlfmt)

# ansible-server-config

Ansible module for initial setup virtual machine

## Compatibility

- COMPATIBLE_OS_FAMILY:
    - RedHat
    - Debian
- COMPATIBLE_DISTRIBUTION_MAJOR_VERSION:
    - "8"
    - "9"
    - "2022"

*Tested on Rocky Linux 8.7 (Green Obsidian) and Kali GNU/Linu 2022.3*

## Run playbook

```bash
ansible-playbook ansible-server-config.yaml -i inventory/inventory.yaml [-l <host>]
```

## Gathering facts

```bash
ansible all -m ansible.builtin.gather_facts --tree /tmp/facts -i inventory/inventory.yaml
```

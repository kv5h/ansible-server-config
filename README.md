[![](https://img.shields.io/badge/Linter-google_yamlfmt-blue.svg)](https://github.com/google/yamlfmt)

# ansible-server-config

Ansible module for initial setup virtual machine

## Compatibility

- COMPATIBLE_OS_FAMILY:
   - RedHat
- COMPATIBLE_DISTRIBUTION_MAJOR_VERSION:
    - "8"
    - "9"

*Tested on Rocky Linux 8.7 (Green Obsidian)*

## Run playbook

```bash
ansible-playbook ansible-server-config.yaml -i inventory/inventory.yaml [-l <host>]
```


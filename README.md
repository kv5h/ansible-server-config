# ansible-server-config
Ansible module for initial setup virtual machine

## Structure

```
roles/
├── bashrc
│   └── tasks
│       ├── bashrc_config.yaml
│       └── main.yaml
├── chrony
│   └── tasks
│       ├── chrony_config.yaml
│       └── main.yaml
├── docker
│   └── tasks
│       ├── install_docker.yaml
│       └── main.yaml
├── git
│   └── tasks
│       ├── git_config.yaml
│       └── main.yaml
├── screen
│   └── tasks
│       ├── main.yaml
│       └── screen_config.yaml
├── sysctl
│   └── tasks
│       ├── main.yaml
│       └── sysctl_config.yaml
├── validation
│   └── tasks
│       ├── main.yaml
│       └── os_validation.yaml
├── vim
│   └── tasks
│       ├── main.yaml
│       └── vim_config.yaml
└── yum
    └── tasks
        ├── main.yaml
        └── yum.yaml
```

## Compatibility

- COMPATIBLE_OS_FAMILY:
   - RedHat
- COMPATIBLE_DISTRIBUTION_MAJOR_VERSION:
    - "8"
    - "9"

## Linter

- [yamlfmt](https://github.com/google/yamlfmt)

andrewrothstein.bbr
=========
![Build Status](https://github.com/andrewrothstein/ansible-bbr/actions/workflows/build.yml/badge.svg)

Installs the [bosh-backup-and-restore](https://github.com/cloudfoundry-incubator/bosh-backup-and-restore).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.bbr
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

## Ansible Role: robosignatory
This robosignatory role is used in the CentOS Infra.

Based off of https://pagure.io/fedora-infra/ansible/blob/main/f/roles/robosignatory
etc.

It surely depends (see dependencies below) on some other roles.

See also [ansible-infra-playbooks](https://github.com/CentOS/ansible-infra-playbooks) directory to see how the tree/structure is organized

### Variables
See [defaults variables and explanations](defaults/main.yml)

### Dependencies
This role can depend on some other roles, either statically defined, or dynamically included/imported:
  * See [meta/main.yml](meta/main.yml)
  * Or each <task>.yml under tasks folder for included/imported roles

All those roles are declared in our [requirements.yml](https://github.com/CentOS/ansible-infra-playbooks/blob/master/requirements-production.yml) file.

### Development
Molecule tests use vagrant so you need a working vagrant installation in your host machine.

Running molecule tests require the following python libraries:

- molecule
- molecule-vagrant
- python-vagrant

Tests can be executed by running:

```sh
molecule test
```

### License
MIT (see [LICENSE](LICENSE) file)

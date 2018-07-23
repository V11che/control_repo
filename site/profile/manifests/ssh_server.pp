class profile::ssh_server {
  include ssh
  ssh::node {'172.18.0.2'}
  ssh::node {'172.18.0.3'}
}

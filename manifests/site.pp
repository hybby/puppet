# /etc/puppet/environments/production/manifests/site.pp

node default {
  include motd
  include firewall
  include selinux
  include dotfiles
}

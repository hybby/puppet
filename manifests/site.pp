# /etc/puppet/environments/production/manifests/site.pp

node default {
  include dotfiles
  include motd
  include firewall
  include selinux
  include dns
}

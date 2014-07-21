# selinux/manifests/init.pp
class selinux {
  include selinux::params, selinux::config
  }

# selinux/manifests/init.pp
class selinux (
  ) inherits selinux::params {
  include selinux::config
  }

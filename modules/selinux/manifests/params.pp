# selinux/manifests/params.pp
class selinux::params {
  case $::osfamily {
    'RedHat': {
      $selinux_config = '/etc/selinux/config'
      $selinux_link   = '/etc/sysconfig/selinux'
    }
  default: {
    fail("sorry, the ${module_name} module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

# firewall/manifests/params.pp
class firewall::params {
  case $::osfamily {
    'RedHat': {
      $firewall = 'iptables'
    }
  default: {
    fail("sorry, the ${module_name} module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

# modules/dns/manifests/params.pp
class dns::params {
  case $::osfamily {
    'RedHat': {
      $resolv        = '/etc/resolv.conf'
      $nameservers   = ['192.168.0.1']
      $searchdomains = ['okayalright.co.uk']
    }
  default: {
    fail("sorry, the ${module_name} module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

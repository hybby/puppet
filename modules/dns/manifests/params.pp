# modules/dns/manifests/params.pp
class dns::params {
  case $::osfamily {
    'RedHat': {
      $resolv        = '/etc/resolv.conf'
      $domain        = 'okayalright.co.uk'
      $nameservers   = ['192.168.0.1']
      $searchdomains = ['okayalright.co.uk','hybby.com']
    }
  default: {
    fail("sorry, the ${module_name} module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

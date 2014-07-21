# firewall/manifests/service.pp
class firewall::service (
  ) {
    service { $firewall::params::firewall :
      ensure => stopped,
      enable => false,
    }
  }


# firewall/manifests/service.pp
class firewall::service (
  $firewall = $firewall::params::firewall
  ) {
    service { $firewall :
      ensure => stopped,
      enable => false,
    }
  }


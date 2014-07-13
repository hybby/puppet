# firewall/manifests/config.pp
class firewall::config (
  $firewall = $firewall::params::firewall
  ) {
    service { $firewall :
      ensure => stopped,
      enable => false,
    }
  }


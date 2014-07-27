# firewall/manifests/init.pp
class firewall (
  ) inherits firewall::params {
  include firewall::service
  }

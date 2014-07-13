# firewall/manifests/init.pp

class firewall {

  include firewall::params, firewall::config

}

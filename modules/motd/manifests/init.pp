# motd/manifests/init.pp
class motd (
  ) inherits motd::params {
  include motd::config
  }

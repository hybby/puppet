# motd/manifests/init.pp

class motd {

  include motd::params, motd::config

}

# motd/manifests/config.pp
class motd::config (
  ) {
    file { $motd::params::issue :
      ensure => file,
      source => 'puppet:///modules/motd/default/issue.net',
      owner  => 'root',
      group  => 'root',
      mode   => '0644'
    }
    file { $motd::params::motd :
      ensure => file,
      source => 'puppet:///modules/motd/default/motd',
      owner  => 'root',
      group  => 'root',
      mode   => '0644'
    }
  }


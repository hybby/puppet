# motd/manifests/config.pp
class motd::config (
  $issue = $motd::params::issue,
  $motd = $motd::params::motd
  ) {
    file { $issue :
      ensure => file,
      source => "puppet:///modules/motd/default/issue.net",
      owner => "root",
      group => "root",
      mode  => 0644
    }
   file { $motd : 
      ensure => file,
      source => "puppet:///modules/motd/default/motd",
      owner => "root",
      group => "root",
      mode  => 0644
    }
  }


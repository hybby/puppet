# motd/manifests/params.pp
class motd::params {
  case $::osfamily {
    'RedHat': {
      $issue = '/etc/issue.net'
      $motd = '/etc/motd'
    }
  default: {
    fail("sorry, the MOTD module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

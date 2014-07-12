# motd/manifests/params.pp
class motd::params {
  case $::osfamily {
    'RedHat': {
      $issue = "/etc/issue.net"
      $motd = "/etc/motd"
    }
  default: {
    fail("sorry, the ${module_name} module is not supported on ${::osfamily} systems yet :(")
    } 
  }
}

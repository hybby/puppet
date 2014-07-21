# dotfiles/manifests/params.pp
class dotfiles::params {
  case $::osfamily {
    'RedHat': {
      $user = 'drew'

      # homedirs are different depending if we're root or not
      case $user {
        'root': {
          $homedir = '/root'
          $group = 'root'
          $uid = '0'
        }
        'drew' : {
          $homedir = "/home/${user}"
          $group = 'users'
          $uid = '500'
        }
        default: {
          $homedir = "/home/${user}"
          $group = 'users'
        }
      }

      $bashrc = "${homedir}/.bashrc"
      $bash_profile = "${homedir}/.bash_profile"
      $vimrc  = "${homedir}/.vimrc"
    }
  default: {
    fail("sorry, the ${module_name} module is not supported \
          on ${::osfamily} systems yet :(")
    }
  }
}

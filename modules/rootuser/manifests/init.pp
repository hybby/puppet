# rootuser/manifests/init.pp
class rootuser (
  $homedir      = $rootuser::params::homedir,
  $bashrc       = $rootuser::params::bashrc,
  $bash_profile = $rootuser::params::bash_profile,
  $vimrc        = $rootuser::params::vimrc
  ) inherits rootuser::params {
    include rootuser::config
  }

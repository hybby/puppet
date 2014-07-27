# dotfiles/manifests/init.pp
class dotfiles (
  $user         = $dotfiles::params::user,
  $group        = $dotfiles::params::group,
  $uid          = $dotfiles::params::uid,
  $homedir      = $dotfiles::params::homedir,
  $bashrc       = $dotfiles::params::bashrc,
  $bash_profile = $dotfiles::params::bash_profile,
  $vimrc        = $dotfiles::params::vimrc
  ) inherits dotfiles::params {
    include dotfiles::config
  }

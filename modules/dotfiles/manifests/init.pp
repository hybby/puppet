# dotfiles/manifests/init.pp
class dotfiles (
  $user = 'UNSET',
  $group = 'UNSET',
  $homedir = 'UNSET',
  $bashrc = 'UNSET',
  $bash_profile = 'UNSET',
  $uid = 'UNSET',
  $vimrc = 'UNSET'
  ) {
    include dotfiles::params, dotfiles::config
  }

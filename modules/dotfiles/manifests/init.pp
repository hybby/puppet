# dotfiles/manifests/init.pp
class dotfiles (
  $user = 'UNSET',
  $group = 'UNSET',
  $uid = 'UNSET',
  ) {
    include dotfiles::params, dotfiles::config
  }

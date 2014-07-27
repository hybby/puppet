# dotfiles/manifests/init.pp
class dotfiles (
  $user = $dotfiles::params::user,
  $group = $dotfiles::params::group,
  $uid = $dotfiles::params::uid
  ) inherit dotfiles::params {
    include dotfiles::config
  }

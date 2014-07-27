# dotfiles/manifests/params.pp
class dotfiles::params
{
  # i'm the default user, obv.
  $user         = 'drew'
  $homedir      = '/home/drew'
  $uid          = '500'
  $group        = 'users'
  $bashrc       = '/home/drew/.bashrc'
  $bash_profile = '/home/drew/.bash_profile'
  $vimrc        = '/home/drew/.vimrc'
}

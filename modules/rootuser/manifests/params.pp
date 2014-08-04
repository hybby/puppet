# rootuser/manifests/params.pp
class rootuser::params
{
  $user         = 'root'
  $homedir      = '/root'
  $bashrc       = '/root/.bashrc'
  $bash_profile = '/root/.bash_profile'
  $vimrc        = '/root/.vimrc'
}

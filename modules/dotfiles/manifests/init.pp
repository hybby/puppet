# dotfiles/manifests/init.pp
class dotfiles {

  include dotfiles::params, dotfiles::config

}

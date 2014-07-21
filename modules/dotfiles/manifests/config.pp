# dotfiles/manifests/config.pp
class dotfiles::config
  {
    user { $dotfiles::params::user :
      ensure   => present,
      password => '$6$Qy6IKY/viDT3c.mT$NxklJp7Na0ja53ED2HuYOL9kwYs4qVaVKu7YEciuYhfY9hQM81UrOeLZjJq6a4xmmr8.5hfykOAQo1vyaxHNW.',
      groups   => $dotfiles::params::group,
      shell    => '/bin/bash',
      home     => $dotfiles::params::homedir,
      uid      => $dotfiles::params::uid,
    }
    file { $dotfiles::params::homedir :
      ensure  => directory,
      owner   => $dotfiles::params::user,
      group   => $dotfiles::params::group,
      mode    => '0750',
      require => User[$dotfiles::params::user],
    }
    file { $dotfiles::params::bashrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::params::user}/bashrc",
      owner   => $dotfiles::params::user,
      group   => $dotfiles::params::group,
      mode    => '0750',
      require => File[$dotfiles::params::homedir],
    }
    file { $dotfiles::params::bash_profile :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::params::user}/bash_profile",
      owner   => $dotfiles::params::user,
      group   => $dotfiles::params::group,
      mode    => '0750',
      require => File[$dotfiles::params::homedir],
    }
    file { $dotfiles::params::vimrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::params::user}/vimrc",
      owner   => $dotfiles::params::user,
      group   => $dotfiles::params::group,
      mode    => '0640',
      require => File[$dotfiles::params::homedir],
    }
  }

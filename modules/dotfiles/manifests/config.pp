# dotfiles/manifests/config.pp
class dotfiles::config
  {
    user { $dotfiles::user :
      ensure   => present,
      password => '$6$Qy6IKY/viDT3c.mT$NxklJp7Na0ja53ED2HuYOL9kwYs4qVaVKu7YEciuYhfY9hQM81UrOeLZjJq6a4xmmr8.5hfykOAQo1vyaxHNW.',
      groups   => $dotfiles::group,
      shell    => '/bin/bash',
      home     => $dotfiles::homedir,
      uid      => $dotfiles::uid,
    }
    file { $dotfiles::homedir :
      ensure  => directory,
      owner   => $dotfiles::user,
      group   => $dotfiles::group,
      mode    => '0750',
      require => User[$dotfiles::user],
    }
    file { $dotfiles::bashrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::user}/bashrc",
      owner   => $dotfiles::user,
      group   => $dotfiles::group,
      mode    => '0750',
      require => File[$dotfiles::homedir],
    }
    file { $dotfiles::bash_profile :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::user}/bash_profile",
      owner   => $dotfiles::user,
      group   => $dotfiles::group,
      mode    => '0750',
      require => File[$dotfiles::homedir],
    }
    file { $dotfiles::vimrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${dotfiles::user}/vimrc",
      owner   => $dotfiles::user,
      group   => $dotfiles::group,
      mode    => '0640',
      require => File[$dotfiles::homedir],
    }
  }

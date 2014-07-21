# dotfiles/manifests/config.pp
class dotfiles::config (
  $user = $dotfiles::params::user,
  $group = $dotfiles::params::group,
  $homedir = $dotfiles::params::homedir,
  $bashrc = $dotfiles::params::bashrc,
  $bash_profile = $dotfiles::params::bash_profile,
  $uid = $dotfiles::params::uid,
  $vimrc = $dotfiles::params::vimrc
  ) {
    user { $user :
      ensure   => present,
      password => '$6$Qy6IKY/viDT3c.mT$NxklJp7Na0ja53ED2HuYOL9kwYs4qVaVKu7YEciuYhfY9hQM81UrOeLZjJq6a4xmmr8.5hfykOAQo1vyaxHNW.',
      groups   => $group,
      shell    => '/bin/bash',
      home     => $homedir,
      uid      => $uid,
    }

    file { $homedir :
      ensure  => directory,
      owner   => $user,
      group   => $group,
      mode    => '0750',
      require => User[$user],
    }

    file { $bashrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${user}/bashrc",
      owner   => $user,
      group   => $group,
      mode    => '0640',
      require => File[$homedir],
    }

    file { $bash_profile :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${user}/bash_profile",
      owner   => $user,
      group   => $group,
      mode    => '0640',
      require => File[$homedir],
    }

    file { $vimrc :
      ensure  => file,
      source  => "puppet:///modules/dotfiles/${user}/vimrc",
      owner   => $user,
      group   => $group,
      mode    => '0640',
      require => File[$homedir],
    }
  }

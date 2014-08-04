# rootuser/manifests/config.pp
class rootuser::config
  {
    user { 'root':
      ensure   => present,
      groups   => 'root',
      shell    => '/bin/bash',
      home     => $rootuser::homedir,
    }
    file { $rootuser::homedir :
      ensure  => directory,
      owner   => $rootuser::user,
      group   => $rootuser::group,
      mode    => '0700',
      require => User[$rootuser::user],
    }
    file { $rootuser::bashrc :
      ensure  => file,
      source  => "puppet:///modules/rootuser/${rootuser::user}/bashrc",
      owner   => $rootuser::user,
      group   => $rootuser::group,
      mode    => '0700',
      require => File[$rootuser::homedir],
    }
    file { $rootuser::bash_profile :
      ensure  => file,
      source  => "puppet:///modules/rootuser/${rootuser::user}/bash_profile",
      owner   => $rootuser::user,
      group   => $rootuser::group,
      mode    => '0700',
      require => File[$rootuser::homedir],
    }
    file { $rootuser::vimrc :
      ensure  => file,
      source  => "puppet:///modules/rootuser/${rootuser::user}/vimrc",
      owner   => $rootuser::user,
      group   => $rootuser::group,
      mode    => '0600',
      require => File[$rootuser::homedir],
    }
  }

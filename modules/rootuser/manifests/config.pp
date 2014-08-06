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
      owner   => 'root',
      group   => 'root',
      mode    => '0700',
      require => User['root'],
    }
    file { $rootuser::bashrc :
      ensure  => file,
      source  => "puppet:///modules/rootuser/root/bashrc",
      owner   => 'root',
      group   => 'root',
      mode    => '0700',
      require => File[$rootuser::homedir],
    }
    file { $rootuser::bash_profile :
      ensure  => file,
      source  => "puppet:///modules/rootuser/root/bash_profile",
      owner   => 'root',
      group   => 'root',
      mode    => '0700',
      require => File[$rootuser::homedir],
    }
    file { $rootuser::vimrc :
      ensure  => file,
      source  => "puppet:///modules/rootuser/root/vimrc",
      owner   => 'root',
      group   => 'root',
      mode    => '0600',
      require => File[$rootuser::homedir],
    }
  }

# selinux/manifests/config.pp
class selinux::config (
  ) {
    file { $selinux::params::selinux_config :
      ensure => file,
      source => 'puppet:///modules/selinux/config',
      owner  => 'root',
      group  => 'root',
      mode   => '0644'
      }
    file { $selinux::params::selinux_link :
      ensure => link,
      target => "$selinux_config"
      }
    }


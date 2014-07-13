# selinux/manifests/config.pp
class selinux::config (
  $selinux_config = $selinux::params::selinux_config,
  $selinux_link = $selinux::params::selinux_link
  ) {
    file { $selinux_config :
      ensure => file,
      source => 'puppet:///modules/selinux/config',
      owner  => 'root',
      group  => 'root',
      mode   => '0644'
      }
    file { $selinux_link :
      ensure => link,
      target => "$selinux_config"
      }
    }


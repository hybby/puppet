# modules/dns/manifests/config.pp
class dns::config {
  file { $dns::resolv : 
    content => template('dns/resolv.conf.erb'),
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }
}

# modules/dns/manifests/init.pp
class dns (
  $resolv        = $dns::params::resolv,
  $nameservers   = $dns::params::nameservers,
  $searchdomains = $dns::params::searchdomains,
) inherits dns::params {
  include dns::config
}

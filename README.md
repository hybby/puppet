puppet
=======

this repository contains all of the puppet 
manifests that i have written / ripped off.

also how to install the fucker


puppet installation notes:
--------------------------

  *   yum update -y
  *   shutdown -r now
  *   sudo rpm -ivh http://mirror.bytemark.co.uk/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
  *   sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
  *   sudo yum install puppet-server -y


puppet configuration notes:
---------------------------

  *   ensure that 'puppet' is included in /etc/hosts for the ip address of eth0 along with hostname and fqdn.
  *   add 'dns_alt_names = puppet,yalson,yalson.okayalright.co.uk' to the [main] section of /etc/puppet/puppet.conf
  *   puppet master --verbose --no-daemonize (ctrl + c when you see 'Starting Puppet master version.*').  think of this as a syntax check of sorts, i suppose?  it does a bunch of inital cert generating, too.
  

more master related directives for /etc/puppet/puppet.conf:
-----------------------------------------------------------

  *   create a [master] section
  *   move the 'dns_alt_names' directive down to to [master]
  *   environmentpath = $confdir/environments
  *   basemodulepath = $confdir/modules:/usr/share/puppet/modules


configure the production environment:
-------------------------------------

  *   mkdir -p /etc/puppet/environments/production/modules
  *   mkdir -p /etc/puppet/environments/production/manifests


'production quality webserver' sigh:
------------------------------------

  *   yum install httpd httpd-devel mod_ssl ruby-devel rubygems gcc curl-devel openssl-devel zlib-devel gcc-c++ -y
  *   gem install rack passenger
  *   passenger-install-apache2-module
  *   mkdir -p /usr/share/puppet/rack/puppetmasterd
  *   mkdir /usr/share/puppet/rack/puppetmasterd/public 
  *   mkdir /usr/share/puppet/rack/puppetmasterd/tmp
  *   cp /usr/share/puppet/ext/rack/config.ru /usr/share/puppet/rack/puppetmasterd/
  *   chown puppet:puppet /usr/share/puppet/rack/puppetmasterd/config.ru
  *   copy the contents of install_files/puppetmaster.conf to /etc/httpd/conf.d/


sort it aht mate.  httpd replaces puppetmaster service:
-------------------------------------------------------

disables:
  *   chkconfig puppetmaster off
  *   service puppetmaster stop

enables:
  *   chkconfig httpd on
  *   chkconfig puppet on
  *   service httpd start
  *   service puppet start


fucking whew.  is that it?  i hope so.
--------------------------------------

  *   https://yalson:8140 should actually be listening, although i do not think you will be able to get anything useful out of it.

  *   puppet agent test - should return all green and compile catalogues etc.


because why not
===============




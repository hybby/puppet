# ===========================================
# puppet:
# ------
# this repository contains all of the puppet 
# manifests that i have written / ripped off.
#
# also how to install the fucker
# ===========================================

# puppet installation notes:
# ==========================

  o   yum update -y
  o   shutdown -r now
  o   sudo rpm -ivh http://mirror.bytemark.co.uk/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
  o   sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
  o   sudo yum install puppet-server -y


# puppet configuration notes:
# ===========================

  o   ensure that 'puppet' is included in /etc/hosts for the ip address of eth0 along with hostname and fqdn.
  o   add 'dns_alt_names = puppet,yalson,yalson.okayalright.co.uk' to the [main] section of /etc/puppet/puppet.conf
  o   puppet master --verbose --no-daemonize (ctrl + c when you see 'Starting Puppet master version.*').  
      think of this as a syntax check of sorts, i suppose?  it does a bunch of inital cert generating, too.
  
# more master related directives for /etc/puppet/puppet.conf
# ==========================================================

  o   create a [master] section
  o   move the 'dns_alt_names' directive down to to [master]
  o   environmentpath = $confdir/environments
  o   basemodulepath = $confdir/modules:/usr/share/puppet/modules


# configure the production environment
# ====================================

  o   mkdir -p /etc/puppet/environments/production/modules
  o   mkdir -p /etc/puppet/environments/production/manifests


# 'production quality webserver' sigh
# ===================================
  o   yum install httpd httpd-devel mod_ssl ruby-devel rubygems gcc curl-devel openssl-devel zlib-devel gcc-c++ -y
  o   gem install rack passenger
  o   passenger-install-apache2-module
  o   mkdir -p /usr/share/puppet/rack/puppetmasterd
  o   mkdir /usr/share/puppet/rack/puppetmasterd/public 
  o   mkdir /usr/share/puppet/rack/puppetmasterd/tmp
  o   cp /usr/share/puppet/ext/rack/config.ru /usr/share/puppet/rack/puppetmasterd/
  o   chown puppet:puppet /usr/share/puppet/rack/puppetmasterd/config.ru
  o   copy the contents of install_files/puppetmaster.conf to /etc/httpd/conf.d/


# sort it aht mate.  httpd replaces puppetmaster service.
# =======================================================

  o   chkconfig puppetmaster off
  o   service puppetmaster stop

  o   chkconfig httpd on
  o   chkconfig puppet on
  o   service httpd start
  o   service puppet start


# fucking whew.  is that it?  i hope so.
# ======================================

  o   https://yalson:8140 should actually be listening, although i do 
      not think you will be able to get anything useful out of it.

  o   puppet agent test - should return all green and compile catalogues etc.






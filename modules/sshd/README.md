sshd - configure the sshd service 
=================================

puppet module to configure the `sshd` service


description
-----------
i need to manage my default `sshd` config.    
it manages things like banners, rootlogin,  
listening ports and things like that.   

i think it is erb time


what this module affects:
-------------------------
  * the openssh-server package
  * the `sshd` service
  * the /etc/ssh/sshd_config file
  * the `issue.net` file


variables:
----------
* `$listen_on` - addresses to listen on (default: `$::ipaddress_eth0`)  
* `$sshd_config` - the path to the `sshd_config` file (default: `/etc/ssh/sshd_config`)  
* `$ports` - an array of ports on which to listena (default: `22`, `22488`)  
* `$permitrootlogin` - yes or no (default: `no`)  
* `$displaymotd` - yes or no (default: `yes`)  
* `$bannerfile` - where is the banner? (default: `/etc/issue.net`)  
* `$allowusers` - who is allowed to log in? (default: `drew`)  
* `$x11_forwarding` - yes or no (default: `yes`)  


getting started with this module:
---------------------------------

```puppet
include sshd
```


any special usage info?
-----------------------
override any of the above that you like 

```puppet
class {'sshd':
  bannerfile => '/etc/wherever/mybanner.txt'
}
```

any limitations i should know about?
------------------------------------
nope


development notes and reuse:
----------------------------
not today


module history / changelog:
---------------------------
27/07/14 - started work on this module.  

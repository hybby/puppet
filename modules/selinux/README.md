selinux - selinux config 
========================

puppet module to turn off selinux and make sure it stays off.


description
-----------
since i am not particularly interested in selinux running on 
any of my hosts at the moment, i have created this module to
make sure it stays off.  

in the future, i can make things more complicated if i like.


what this module affects:
-------------------------
* the `selinux` function


variables:
----------
  `$selinux::params::selinux_config`  
  the path of the selinux config file.  on redhat, this is `/etc/selinux/config`

  `$selinux::params::selinux_link`  
  on redhat, there is a symlink to the selinux configuratin file at  
  `/etc/sysconfig/selinux`


getting started with this module:
---------------------------------
pretty simple module.  just plonk it down


any special usage info?
-----------------------
no

any limitations i should know about?
------------------------------------
yeah, it is redhat only at the moment.


development notes and reuse:
----------------------------
do whatever you like.  this module is pretty shit anyways.


module history / changelog:
---------------------------
13/07/14 - started work on this module.  

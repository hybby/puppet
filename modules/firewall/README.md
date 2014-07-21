firewall - firewall config 
==========================

puppet module to turn off `iptables` and make sure it stays off.


description
-----------
since i am not particularly interested in `iptables` running on 
any of my hosts at the moment, i have created this module to
make sure it stays off.  

in the future, i can make things more complicated if i like.


what this module affects:
-------------------------
  * the `iptables` service


variables:
----------

  `$firewall::params::firewall`  
  the name of the firewall service.  for redhat, this is `iptables`    


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

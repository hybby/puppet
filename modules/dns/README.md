dns - config dns & manage resolv.conf
=====================================

puppet module to configure dns and  
manage the `/etc/resolv.conf` file.  


description
-----------
although it is not very exciting, i   
want my `/etc/resolv.conf` file to   
remain reasonably sensible  


what this module affects:
-------------------------
  * the `/etc/resolv.conf` file


variables:
----------
  * `$resolv` - the full path of `resolv.conf`  
  * `$nameservers` - nameservers to configure
  * `$searchdomains` - searchdomains to configure


getting started with this module:
---------------------------------

```puppet
include dns
```


any special usage info?
-----------------------

if you want to override anything, you do  
it like this:

```puppet
class {'dns': 
  nameservers => ['123.123.123.123',  
                  '213.213.213.213 ]
}
```

any limitations i should know about?
------------------------------------
not really


development notes and reuse:
----------------------------
nah


module history / changelog:
---------------------------
27/07/14 - started work on this module.  

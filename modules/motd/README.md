motd - message of the day
=========================

puppet module to set the `/etc/motd` and 
`/etc/issue.net` files to what i want.


description
-----------
pretty much just makes sure this host has the correct files in
place for `/etc/issue.net` and `/etc/motd`.  the files have been 
included in the `${modulebase}/files/default` dir, with the 
thought that there might be per-host configuration later on.

today was the day that i learned puppet:/// uris automatically
fire in a `files` directory for any modules you mention.  

seriously.  why?


what this module affects:
-------------------------
* `/etc/motd`
* `/etc/issue.net`


variables:
==========

  `$motd::params::motd`  
  the path of the `motd` file.  (default: `/etc/motd/`)

  `$motd::params::issue.net`  
  the path of the `issue.net` file.  (default: `/etc/issue.net`).


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
09/07/14 - started work on this module.  what a latecomer to the puppet party.  
12/07/14 - finished the module, for all it does.  getting the agent to pick it up took the longest

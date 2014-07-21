dotfiles - replace my files etc
===============================

puppet module to control dotfiles that belong to my user

also makes sure my user is there, etc.


description
-----------
`.profile`, `.bashrc`, *etc*... these are all things that i am  
interested in remaining the same for my lovely user.


what this module affects:
-------------------------
  * by default, the following files for the 'drew' user:


variables:
----------

  `$dotfiles::params::user`  
  the name of the user that is being configured.  (default: `drew`)  

  `$dotfiles::params::group`  
  the group membership of `$user`.  (default: `users`)  

  `$dotfiles::params::homedir`  
  the home directory of `$user`.  
  for non-root users, this is set to `/home/${user}`  
  for the root user, this is set to `/root`.  

  `$dotfiles::params::uid`  
  the uid of `$user`.  for `drew` this is 500.  for `root`, 0.   

  `$dotfiles::params::bashrc`  
  the default `.bashrc` file for `$user`.  placed in `$homedir` by default.   

  `$dotfiles::params::bash_profile`  
  the default `.bash_profile` file for `$user`.  placed in `$homedir` by default.   

  `$dotfiles::params::vimrc`  
   the default `.vimrc` file for `$user`.  placed in `$homedir` by default.    


getting started with this module:
---------------------------------
pretty simple module.  just plonk it down


any special usage info?
-----------------------
in the future, it would be nice if we could override the
$user variable to be an array or sommat.  just a thought.


any limitations i should know about?
------------------------------------
yeah, it is redhat only at the moment.


development notes and reuse:
----------------------------
do whatever you like.  this module is pretty shit anyways.


module history / changelog:
---------------------------
20/07/14 - started work on this module.  

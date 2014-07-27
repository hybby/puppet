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
  * by default, the following files for the `drew` user:
    * `~/.bashrc`
    * `~/.bash_profile`
    * `~/.vimrc`

variables:
----------

  `$dotfiles::params::user`  
  the name of the user that is being configured.  (default: `drew`)  

  `$dotfiles::params::group`  
  the group membership of `$user`.  (default: `users`)  

  `$dotfiles::params::homedir`  
  the home directory of `$user`   
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

you can override the defaults like this:

  class { 'dotfiles':
    user         => 'root',
    group        => 'root',
    homedir      => '/root',
    uid          => '0',
    bashrc       => '/root/.bashrc',
    bash_profile => '/root/.bash_profile',
    vimrc        => '/root/.vimrc',
  }

i have special files for root, so that is why i did this.

pretty annoying that i cannot override the `user` variable and then
use that later in params.pp.  i think this is because of the order 
that overriden parameters and `params.pp` are parsed.

oh yes.  files are kept in the `files/${user}` dir, so make sure
to add that if you have a special overriden user.


any special usage info?
-----------------------
just what i said up there really


any limitations i should know about?
------------------------------------
yeah, it is redhat only at the moment.


development notes and reuse:
----------------------------
do whatever you like.  this module is pretty shit anyways.


module history / changelog:
---------------------------
20/07/14 - started work on this module.  

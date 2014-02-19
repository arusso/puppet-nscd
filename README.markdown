# nscd Module #

## Introduction ##

This module manages the nscd service, and nscd.conf

## Usage ##

### Non-Hiera Example ###

    class { 'nscd': netgroup_enable_cache = 'no' }

### Hiera Example ###

    # in manifest
    include nscd

    # in hiera
    ---
    nscd::netgroup_enable_cache: 'no'
    nscd::service_ensure: 'undef'

License
-------

See LICENSE file

Copyright
---------

Copyright &copy; 2014 The Regents of the University of California


Contact
-------

Aaron Russo <arusso@berkeley.edu>

Support
-------

Please log tickets and issues at the
[Projects site](https://github.com/arusso/puppet-nscd/issues/)

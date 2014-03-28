# nscd Module #

## Introduction ##

This module installs, configures and manages the service of nscd.

## Usage ##

To use this class, you need only interact with the ```nscd``` class. It supports
parameterized class, as well as via Hiera key/values in versions 2.7+ of Puppet.

Class parameters always follow the convention ```${service}_${setting}```, where
```${service}``` is one of the cache (service) names. ```${setting}``` is the
cache setting name, with the dash (```-```) character replaced with the
underscore character (```_```).

Hiera keys follow the same convention as above, except being located in the
```nscd``` namespace. For example, the parameter ```netgroup_enable_cache```
would be the Hiera key ```nscd::netgroup_enable_cache```.

In addition, the following Hiera keys are available for use to control the
nscd service.

* ```service_enable``` : <_true_|_false_|_undef_> : If set to _true_, the service
  is set to be enabled at boot time. If _false_, the service is disabled at boot.
  If set to _undef_, the boot state is not managed by Puppet.

* ```service_ensure``` : <_running_|_stopped_|_undef_> : If set to _running_,
  state of service is ensured to be running. Likewise for _stopped_, service is
  ensured to be stopped. _undef_ will prevent Puppet from managing the service
  state.

__note__: Refactoring of the code to make these class parameters is on the
radar, but likely not to happen unless someone asks for it. Pull requests
happily accepted.

### Services ###

The following services are supported:

* ```passwd``` : the passwd (/etc/passwd) service cache
* ```group``` : the group (/etc/group) service cache
* ```hosts``` : the hosts (/etc/hosts) service cache
* ```services``` : the services (/etc/services) service cache
* ```netgroup``` : the netgroup (/etc/netgroup) service cache

### Settings ###

The following settings are supported for each service. If left unspecified, the
a parameter value will default to the settings of your distributions default
config.

* ```enable_cache``` : <_yes_|_no_> : turn the cache.
* ```positive_time_to_live``` : <_integer_> : ttl of positive cache entries.
* ```negative_time_to_live``` : <_integer_> : ttl of negative cache entries.
* ```suggested_size``` : <_integer_> : internal hash table size. should be a
  prime number.
* ```check_files``` : <_yes_|_no_> : check the local service file for changes.
* ```persistent``` : <_yes_|_no_> : retain the database across server restarts.
* ```shared``` : <_yes_|_no_> :  provide direct memory access for a service's
  database.
* ```max_db_size``` : <_integer_> : maximum size (in bytes) of the db file.
* ```auto-propagate``` <_yes_|_no_> : (passwd and group only) when set to
  ```no```, byname requests are not add to the byuid and bygid caches.

## Examples ##

### Hiera Example ###

    # in manifest
    include nscd

    # in hiera
    ---
    nscd::service_ensure: 'undef'
    nscd::passwd_check_files: no
    nscd::services_max_db_size: 102400
    nscd::netgroup_enable_cache: no

### Non-Hiera Example ###

    class { 'nscd':
      passwd_positive_time_to_live = 600,
      passwd_negative_time_to_live = 300,
      service_ensure => 'undef',
      netgroup_enable_cache = 'no',
    }

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

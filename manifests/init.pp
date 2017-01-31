# == Class nscd
#
# nscd management module
#
# === Parameters
#
# All parameters are presented in heira, under the nscd:: namespace. For
# example, <code>nscd::passwd_enable_cache: yes</code>.
#
# <code>passwd_enable_cache</code>:: <yes|no>
# <code>passwd_positive_time_to_live</code>:: <integer>
# <code>passwd_negative_time_to_live</code>:: <integer>
# <code>passwd_suggested_size</code>:: <integer>
# <code>passwd_check_files</code>:: <yes|no>
# <code>passwd_persistent</code>:: <yes|no>
# <code>passwd_shared</code>:: <yes|no>
# <code>passwd_max_db_size</code>:: <integer>
# <code>passwd_auto_propagate</code>:: <yes|no>
# <code>group_enable_cache</code>:: <yes|no>
# <code>group_positive_time_to_live</code>:: <integer>
# <code>group_negative_time_to_live</code>:: <integer>
# <code>group_suggested_size</code>:: <integer>
# <code>group_check_files</code>:: <yes|no>
# <code>group_persistent</code>:: <yes|no>
# <code>group_shared</code>:: <yes|no>
# <code>group_max_db_size</code>:: <integer>
# <code>group_auto_propagate</code>:: <yes|no>
# <code>hosts_enable_cache</code>:: <yes|no>
# <code>hosts_positive_time_to_live</code>:: <integer>
# <code>hosts_negative_time_to_live</code>:: <integer>
# <code>hosts_suggested_size</code>:: <integer>
# <code>hosts_check_files</code>:: <yes|no>
# <code>hosts_persistent</code>:: <yes|no>
# <code>hosts_shared</code>:: <yes|no>
# <code>hosts_max_db_size</code>:: <integer>
# <code>services_enable_cache</code>:: <yes|no>
# <code>services_positive_time_to_live</code>:: <integer>
# <code>services_negative_time_to_live</code>:: <integer>
# <code>services_suggested_size</code>:: <integer>
# <code>services_check_files</code>:: <yes|no>
# <code>services_persistent</code>:: <yes|no>
# <code>services_shared</code>:: <yes|no>
# <code>services_max_db_size</code>:: <integer>
# <code>netgroup_enable_cache</code>:: <yes|no>
# <code>netgroup_positive_time_to_live</code>:: <integer>
# <code>netgroup_negative_time_to_live</code>:: <integer>
# <code>netgroup_suggested_size</code>:: <integer>
# <code>netgroup_check_files</code>:: <yes|no>
# <code>netgroup_persistent</code>:: <yes|no>
# <code>netgroup_shared</code>:: <yes|no>
# <code>netgroup_max_db_size</code>:: <integer>
#
# === Examples
#
#    class { nscd:
#      netgroup_enable_cache = 'no',
#    }
#
# === Authors
#
# Aaron Russo <arusso@berkeley.edu>
#
# === Copyright
#
# Copyright 2014 Regents of the University of California
#
class nscd (
  $passwd_enable_cache = $nscd::params::passwd_enable_cache,
  $passwd_positive_time_to_live = $nscd::params::passwd_positive_time_to_live,
  $passwd_negative_time_to_live = $nscd::params::passwd_negative_time_to_live,
  $passwd_suggested_size = $nscd::params::passwd_suggested_size,
  $passwd_check_files = $nscd::params::passwd_check_files,
  $passwd_persistent = $nscd::params::passwd_persistent,
  $passwd_shared = $nscd::params::passwd_shared,
  $passwd_max_db_size = $nscd::params::passwd_max_db_size,
  $passwd_auto_propagate = $nscd::params::passwd_auto_propagate,
  $group_enable_cache = $nscd::params::group_enable_cache,
  $group_positive_time_to_live = $nscd::params::group_positive_time_to_live,
  $group_negative_time_to_live = $nscd::params::group_negative_time_to_live,
  $group_suggested_size = $nscd::params::group_suggested_size,
  $group_check_files = $nscd::params::group_check_files,
  $group_persistent = $nscd::params::group_persistent,
  $group_shared = $nscd::params::group_shared,
  $group_max_db_size = $nscd::params::group_max_db_size,
  $group_auto_propagate = $nscd::params::group_auto_propagate,
  $hosts_enable_cache = $nscd::params::hosts_enable_cache,
  $hosts_positive_time_to_live = $nscd::params::hosts_positive_time_to_live,
  $hosts_negative_time_to_live = $nscd::params::hosts_negative_time_to_live,
  $hosts_suggested_size = $nscd::params::hosts_suggested_size,
  $hosts_check_files = $nscd::params::hosts_check_files,
  $hosts_persistent = $nscd::params::hosts_persistent,
  $hosts_shared = $nscd::params::hosts_shared,
  $hosts_max_db_size = $nscd::params::hosts_max_db_size,
  $services_enable_cache = $nscd::params::services_enable_cache,
  $services_positive_time_to_live = $nscd::params::services_positive_time_to_live,
  $services_negative_time_to_live = $nscd::params::services_negative_time_to_live,
  $services_suggested_size = $nscd::params::services_suggested_size,
  $services_check_files = $nscd::params::services_check_files,
  $services_persistent = $nscd::params::services_persistent,
  $services_shared = $nscd::params::services_shared,
  $services_max_db_size = $nscd::params::services_max_db_size,
  $netgroup_enable_cache = $nscd::params::netgroup_enable_cache,
  $netgroup_positive_time_to_live = $nscd::params::netgroup_positive_time_to_live,
  $netgroup_negative_time_to_live = $nscd::params::netgroup_negative_time_to_live,
  $netgroup_suggested_size = $nscd::params::netgroup_suggested_size,
  $netgroup_check_files = $nscd::params::netgroup_check_files,
  $netgroup_persistent = $nscd::params::netgroup_persistent,
  $netgroup_shared = $nscd::params::netgroup_shared,
  $netgroup_max_db_size = $nscd::params::netgroup_max_db_size,
) inherits nscd::params {
  Class['nscd'] ->
  class { 'nscd::install': } ->
  class { 'nscd::config': } ~>
  class { 'nscd::service': }
}

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
  $passwd_enable_cache = hiera('nscd::passwd_enable_cache', $passwd_enable_cache),
  $passwd_positive_time_to_live = hiera('nscd::passwd_positive_time_to_live', $passwd_positive_time_to_live),
  $passwd_negative_time_to_live = hiera('nscd::passwd_negative_time_to_live', $passwd_negative_time_to_live),
  $passwd_suggested_size = hiera('nscd::passwd_suggested_size', $passwd_suggested_size),
  $passwd_check_files = hiera('nscd::passwd_check_files', $passwd_check_files),
  $passwd_persistent = hiera('nscd::passwd_persistent', $passwd_persistent),
  $passwd_shared = hiera('nscd::passwd_shared', $passwd_shared),
  $passwd_max_db_size = hiera('nscd::passwd_max_db_size', $passwd_max_db_size),
  $passwd_auto_propagate = hiera('nscd::passwd_auto_propagate', $passwd_auto_propagate),
  $group_enable_cache = hiera('nscd::group_enable_cache', $group_enable_cache),
  $group_positive_time_to_live = hiera('nscd::group_positive_time_to_live', $group_positive_time_to_live),
  $group_negative_time_to_live = hiera('nscd::group_negative_time_to_live', $group_negative_time_to_live),
  $group_suggested_size = hiera('nscd::group_suggested_size', $group_suggested_size),
  $group_check_files = hiera('nscd::group_check_files', $group_check_files),
  $group_persistent = hiera('nscd::group_persistent', $group_persistent),
  $group_shared = hiera('nscd::group_shared', $group_shared),
  $group_max_db_size = hiera('nscd::group_max_db_size', $group_max_db_size),
  $group_auto_propagate = hiera('nscd::group_auto_propagate', $group_auto_propagate),
  $hosts_enable_cache = hiera('nscd::hosts_enable_cache', $hosts_enable_cache),
  $hosts_positive_time_to_live = hiera('nscd::hosts_positive_time_to_live', $hosts_positive_time_to_live),
  $hosts_negative_time_to_live = hiera('nscd::hosts_negative_time_to_live', $hosts_negative_time_to_live),
  $hosts_suggested_size = hiera('nscd::hosts_suggested_size', $hosts_suggested_size),
  $hosts_check_files = hiera('nscd::hosts_check_files', $hosts_check_files),
  $hosts_persistent = hiera('nscd::hosts_persistent', $hosts_persistent),
  $hosts_shared = hiera('nscd::hosts_shared', $hosts_shared),
  $hosts_max_db_size = hiera('nscd::hosts_max_db_size', $hosts_max_db_size),
  $services_enable_cache = hiera('nscd::services_enable_cache', $services_enable_cache),
  $services_positive_time_to_live = hiera('nscd::services_positive_time_to_live', $services_positive_time_to_live),
  $services_negative_time_to_live = hiera('nscd::services_negative_time_to_live', $services_negative_time_to_live),
  $services_suggested_size = hiera('nscd::services_suggested_size', $services_suggested_size),
  $services_check_files = hiera('nscd::services_check_files', $services_check_files),
  $services_persistent = hiera('nscd::services_persistent', $services_persistent),
  $services_shared = hiera('nscd::services_shared', $services_shared),
  $services_max_db_size = hiera('nscd::services_max_db_size', $services_max_db_size),
  $netgroup_enable_cache = hiera('nscd::netgroup_enable_cache', $netgroup_enable_cache),
  $netgroup_positive_time_to_live = hiera('nscd::netgroup_positive_time_to_live', $netgroup_positive_time_to_live),
  $netgroup_negative_time_to_live = hiera('nscd::netgroup_negative_time_to_live', $netgroup_negative_time_to_live),
  $netgroup_suggested_size = hiera('nscd::netgroup_suggested_size', $netgroup_suggested_size),
  $netgroup_check_files = hiera('nscd::netgroup_check_files', $netgroup_check_files),
  $netgroup_persistent = hiera('nscd::netgroup_persistent', $netgroup_persistent),
  $netgroup_shared = hiera('nscd::netgroup_shared', $netgroup_shared),
  $netgroup_max_db_size = hiera('nscd::netgroup_max_db_size', $netgroup_max_db_size),
) inherits nscd::params {
  Class['nscd'] ->
  class { 'nscd::install': } ->
  class { 'nscd::config': } ~>
  class { 'nscd::service': }
}

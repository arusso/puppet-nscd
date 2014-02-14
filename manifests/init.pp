# == Class nscd
#
# nscd management module
#
# === Parameters
#
# [*sample_parameter*]
#   Explain what the parameter does, and what valid values it accepts, and what
#   it's default is.
#
# === Examples
#
# class { nscd:
#   sample_parameter => $sample_value,
# }
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
  $passwd_enable_cache = hiera('nscd::passwd::enable_cache', $passwd_enable_cache),
  $passwd_positive_time_to_live = hiera('nscd::passwd::positive_time_to_live', $passwd_positive_time_to_live),
  $passwd_negative_time_to_live = hiera('nscd::passwd::negative_time_to_live', $passwd_negative_time_to_live),
  $passwd_suggested_size = hiera('nscd::passwd::suggested_size', $passwd_suggested_size),
  $passwd_check_files = hiera('nscd::passwd::check_files', $passwd_check_files),
  $passwd_persistent = hiera('nscd::passwd::persistent', $passwd_persistent),
  $passwd_shared = hiera('nscd::passwd::shared', $passwd_shared),
  $passwd_max_db_size = hiera('nscd::passwd::max_db_size', $passwd_max_db_size),
  $passwd_auto_propagate = hiera('nscd::passwd::auto_propagate', $passwd_auto_propagate),
  $group_enable_cache = hiera('nscd::group::enable_cache', $group_enable_cache),
  $group_positive_time_to_live = hiera('nscd::group::positive_time_to_live', $group_positive_time_to_live),
  $group_negative_time_to_live = hiera('nscd::group::negative_time_to_live', $group_negative_time_to_live),
  $group_suggested_size = hiera('nscd::group::suggested_size', $group_suggested_size),
  $group_check_files = hiera('nscd::group::check_files', $group_check_files),
  $group_persistent = hiera('nscd::group::persistent', $group_persistent),
  $group_shared = hiera('nscd::group::shared', $group_shared),
  $group_max_db_size = hiera('nscd::group::max_db_size', $group_max_db_size),
  $group_auto_propagate = hiera('nscd::group::auto_propagate', $group_auto_propagate),
  $hosts_enable_cache = hiera('nscd::hosts::enable_cache', $hosts_enable_cache),
  $hosts_positive_time_to_live = hiera('nscd::hosts::positive_time_to_live', $hosts_positive_time_to_live),
  $hosts_negative_time_to_live = hiera('nscd::hosts::negative_time_to_live', $hosts_negative_time_to_live),
  $hosts_suggested_size = hiera('nscd::hosts::suggested_size', $hosts_suggested_size),
  $hosts_check_files = hiera('nscd::hosts::check_files', $hosts_check_files),
  $hosts_persistent = hiera('nscd::hosts::persistent', $hosts_persistent),
  $hosts_shared = hiera('nscd::hosts::shared', $hosts_shared),
  $hosts_max_db_size = hiera('nscd::hosts::max_db_size', $hosts_max_db_size),
  $services_enable_cache = hiera('nscd::services::enable_cache', $services_enable_cache),
  $services_positive_time_to_live = hiera('nscd::services::positive_time_to_live', $services_positive_time_to_live),
  $services_negative_time_to_live = hiera('nscd::services::negative_time_to_live', $services_negative_time_to_live),
  $services_suggested_size = hiera('nscd::services::suggested_size', $services_suggested_size),
  $services_check_files = hiera('nscd::services::check_files', $services_check_files),
  $services_persistent = hiera('nscd::services::persistent', $services_persistent),
  $services_shared = hiera('nscd::services::shared', $services_shared),
  $services_max_db_size = hiera('nscd::services::max_db_size', $services_max_db_size),
  $netgroup_enable_cache = hiera('nscd::netgroup::enable_cache', $netgroup_enable_cache),
  $netgroup_positive_time_to_live = hiera('nscd::netgroup::positive_time_to_live', $netgroup_positive_time_to_live),
  $netgroup_negative_time_to_live = hiera('nscd::netgroup::negative_time_to_live', $netgroup_negative_time_to_live),
  $netgroup_suggested_size = hiera('nscd::netgroup::suggested_size', $netgroup_suggested_size),
  $netgroup_check_files = hiera('nscd::netgroup::check_files', $netgroup_check_files),
  $netgroup_persistent = hiera('nscd::netgroup::persistent', $netgroup_persistent),
  $netgroup_shared = hiera('nscd::netgroup::shared', $netgroup_shared),
  $netgroup_max_db_size = hiera('nscd::netgroup::max_db_size', $netgroup_max_db_size),
) inherits nscd::params {
  ensure_packages( [ 'nscd' ] )

  file { '/etc/nscd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    content => template('nscd/nscd.conf.erb'),
  }
}

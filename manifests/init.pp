# == Class nscd
#
# nscd management module
#
# === Parameters
#
# All parameters are presented in heira, under the nscd:: namespace. For
# example, <code>nscd::passwd_enable_cache: yes</code>.
#
# [*passwd_enable_cache*]: <yes|no>
# [*passwd_positive_time_to_live*]: <integer>
# [*passwd_negative_time_to_live*]: <integer>
# [*passwd_suggested_size*]: <integer>
# [*passwd_check_files*]: <yes|no>
# [*passwd_persistent*]: <yes|no>
# [*passwd_shared*]: <yes|no>
# [*passwd_max_db_size*]: <integer>
# [*passwd_auto_propagate*]: <yes|no>
# [*group_enable_cache*]: <yes|no>
# [*group_positive_time_to_live*]: <integer>
# [*group_negative_time_to_live*]: <integer>
# [*group_suggested_size*]: <integer>
# [*group_check_files*]: <yes|no>
# [*group_persistent*]: <yes|no>
# [*group_shared*]: <yes|no>
# [*group_max_db_size*]: <integer>
# [*group_auto_propagate*]: <yes|no>
# [*hosts_enable_cache*]: <yes|no>
# [*hosts_positive_time_to_live*]: <integer>
# [*hosts_negative_time_to_live*]: <integer>
# [*hosts_suggested_size*]: <integer>
# [*hosts_check_files*]: <yes|no>
# [*hosts_persistent*]: <yes|no>
# [*hosts_shared*]: <yes|no>
# [*hosts_max_db_size*]: <integer>
# [*services_enable_cache*]: <yes|no>
# [*services_positive_time_to_live*]: <integer>
# [*services_negative_time_to_live*]: <integer>
# [*services_suggested_size*]: <integer>
# [*services_check_files*]: <yes|no>
# [*services_persistent*]: <yes|no>
# [*services_shared*]: <yes|no>
# [*services_max_db_size*]: <integer>
# [*netgroup_enable_cache*]: <yes|no>
# [*netgroup_positive_time_to_live*]: <integer>
# [*netgroup_negative_time_to_live*]: <integer>
# [*netgroup_suggested_size*]: <integer>
# [*netgroup_check_files*]: <yes|no>
# [*netgroup_persistent*]: <yes|no>
# [*netgroup_shared*]: <yes|no>
# [*netgroup_max_db_size*]: <integer>
#
# === Examples
#
# class { nscd:
#   netgroup_enable_cache = 'no',
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
  ensure_packages( [ 'nscd' ] )

  # do some validation
  $yesno = '^(yes|no)$'

  validate_re( $passwd_enable_cache, $yesno )
  validate_re( $passwd_check_files, $yesno )
  validate_re( $passwd_persistent, $yesno )
  validate_re( $passwd_shared, $yesno )
  validate_re( $passwd_auto_propagate, $yesno )

  validate_re( $group_enable_cache, $yesno )
  validate_re( $group_check_files, $yesno )
  validate_re( $group_persistent, $yesno )
  validate_re( $group_shared, $yesno )
  validate_re( $group_auto_propagate, $yesno )

  validate_re( $hosts_enable_cache, $yesno )
  validate_re( $hosts_check_files, $yesno )
  validate_re( $hosts_persistent, $yesno )
  validate_re( $hosts_shared, $yesno )

  validate_re( $services_enable_cache, $yesno )
  validate_re( $services_check_files, $yesno )
  validate_re( $services_persistent, $yesno )
  validate_re( $services_shared, $yesno )

  validate_re( $netgroup_enable_cache, $yesno )
  validate_re( $netgroup_check_files, $yesno )
  validate_re( $netgroup_persistent, $yesno )
  validate_re( $netgroup_shared, $yesno )

  file { '/etc/nscd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    content => template('nscd/nscd.conf.erb'),
    notify  => Class['nscd::service'],
  }
}

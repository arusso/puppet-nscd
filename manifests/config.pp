# == Class nscd::config
#
# configures nscd.conf
#
# === Authors
#
# Aaron Russo <arusso@berkeley.edu>
#
# === Copyright
#
# Copyright 2014 Regents of the University of California
#
class nscd::config {
  require nscd

  # do some validation
  $yesno = '^(yes|no)$'

  validate_re( $nscd::passwd_enable_cache, $yesno )
  validate_re( $nscd::passwd_check_files, $yesno )
  validate_re( $nscd::passwd_persistent, $yesno )
  validate_re( $nscd::passwd_shared, $yesno )
  validate_re( $nscd::passwd_auto_propagate, $yesno )

  validate_re( $nscd::group_enable_cache, $yesno )
  validate_re( $nscd::group_check_files, $yesno )
  validate_re( $nscd::group_persistent, $yesno )
  validate_re( $nscd::group_shared, $yesno )
  validate_re( $nscd::group_auto_propagate, $yesno )

  validate_re( $nscd::hosts_enable_cache, $yesno )
  validate_re( $nscd::hosts_check_files, $yesno )
  validate_re( $nscd::hosts_persistent, $yesno )
  validate_re( $nscd::hosts_shared, $yesno )

  validate_re( $nscd::services_enable_cache, $yesno )
  validate_re( $nscd::services_check_files, $yesno )
  validate_re( $nscd::services_persistent, $yesno )
  validate_re( $nscd::services_shared, $yesno )

  validate_re( $nscd::netgroup_enable_cache, $yesno )
  validate_re( $nscd::netgroup_check_files, $yesno )
  validate_re( $nscd::netgroup_persistent, $yesno )
  validate_re( $nscd::netgroup_shared, $yesno )

  file { '/etc/nscd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    content => template('nscd/nscd.conf.erb'),
  }
}

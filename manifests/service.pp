# == Class: nscd::service
#
# Manages the nscd service
#
# === Parameters:
#
# All parameters are presented in heira, under the nscd:: namespace. For
# example, <code>nscd::service_enable: true</code>.
#
# [*service_enable*]: true|false|undef
# [*service_ensure*]: running|stopped|undef
#
class nscd::service (
  $service_enable = hiera( 'nscd::service_enable', $nscd::service_enable ),
  $service_ensure = hiera( 'nscd::service_ensure', $nscd::service_ensure ),
) {
  case $service_ensure {
    /^(?i)running$/,true: { $service_ensure_r = 'running' }
    /^(?i)stopped$/,false: { $service_ensure_r = 'stopped' }
    'undef': { $service_ensure_r = undef }
    default: { fail('service_ensure must be one of <running|stopped|true|false|undef>') }
  }
  case $service_enable {
    /^(?i)on$/,true: { $service_enable_r = true }
    /^(?i)off$/,false: { $service_enable_r = false }
    'undef': { $service_enable_r = undef }
    default: { fail('service_ensure must be one of <on|off|true|false|undef>') }
  }

  service { 'nscd':
    ensure => $service_ensure_r,
    enable => $service_enable_r,
  }
}

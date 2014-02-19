# == Class: nscd::install
#
# Installs the proper package for nscd
#
class nscd::install {
  ensure_packages( [ 'nscd' ] )
}

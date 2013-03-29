# Class: pkg::params
#
# This class manages pkg parameters
#
# Parameters:
# - The $user that Apache runs as
# - The $group that Apache runs as
# - The $apache_name is the name of the package and service on the relevant
#   distribution
# - The $php_package is the name of the package that provided PHP
# - The $ssl_package is the name of the Apache SSL package
# - The $apache_dev is the name of the Apache development libraries package
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class pkg::params {
    if $::osfamily == 'redhat' or $::operatingsystem == 'amazon' {

    } elsif $::osfamily == 'debian' {

    } else {
        fail("Class['pkg::params']: Unsupported operatingsystem: $operatingsystem")
    }
}

# Define: pkg::install
#
# Manage optional packages which are separately packaged.
#
# Sample Usage :
#  pkg::install { [ 'ldap', 'mcrypt', 'xml' ]: }
#  pkg::install { 'odbc': ensure => absent }
#  pkg::install { 'pecl-apc': }
#
define pkg::install ( $ensure = installed ) {
    if ! defined(Package[$title]) {
        package { $title:
            ensure => $ensure,
        }
    }
}


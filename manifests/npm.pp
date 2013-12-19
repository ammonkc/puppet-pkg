# Define: pkg::npm
#
# Manage npm packages which are separately packaged.
#
# Sample Usage :
#  pkg::npm { [ 'less', 'nave' ]: }
#  pkg::npm { 'less': ensure => absent }
#  pkg::npm { 'less': }
#
define pkg::npm ( $ensure = present ) {
  package { $title:
    ensure      => $ensure,
    provider    => 'npm',
    require     => Package['nodejs']
  }
}


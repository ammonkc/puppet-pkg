# Class: pkg::utils
#
# This class installs a set of utilities
#
# Parameters:
#
# Actions:
#   - install utility packages
#
# Requires:
#
# Sample Usage:
#
class pkg::utils (

) inherits pkg::params {
    # utilities to install
    $util_pkgs = [
        'git',
        'vim-enhanced',
        'htop',
        'iftop',
        'wget',
        'curl',
        'zsh',
        'nmap',
        'strace'
    ]
    # install packages
    package { $util_pkgs:
        ensure  => "installed"
    }

}

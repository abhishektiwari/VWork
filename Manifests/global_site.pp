
include ubuntu::apt
include ubuntu::bashrc
include ubuntu::basic

class { 'nodejs':
  version => 'stable',
}

include python
include python::pip
include python::virtualenv

Class[ubuntu::apt] -> Class[nodejs] -> Class[python]

# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/sbin/', '/usr/local/bin' ]
}
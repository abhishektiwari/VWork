# Normally goes to /etc/puppet/manifests/site.pp

include ubuntu::apt
include ubuntu::bashrc
include ubuntu::basic
class { 'ubuntu::s3cmd':
	my_access_key => "AKIAJ5FPH5NKTXOXMSKA",
	my_secret_key => "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",
}

include python
include python::pip

package { "Sphinx":
	ensure   => installed,
	provider => pip,
	require  => Class[python::pip], 
}

package { "sphinx_rtd_theme":
	ensure   => installed,
	provider => pip,
	require  => Package['Sphinx'],
}

Class[ubuntu::apt] -> Class[ubuntu::bashrc] -> Class[ubuntu::basic] -> Class[ubuntu::s3cmd] -> Package[Sphinx] -> Package[sphinx_rtd_theme]

# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/sbin/', '/usr/local/bin' ]
}
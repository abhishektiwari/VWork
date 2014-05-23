# Normally goes to /etc/puppet/manifests/site.pp

include ubuntu::apt
include ubuntu::bashrc
include ubuntu::basic
include jekyll::jekyll
class { 'ubuntu::s3cmd':
	my_access_key => 'YOUR-AC-KEY',
	my_secret_key => 'YOUR-SE-KEY',
}

Class[ubuntu::apt] -> Class[ubuntu::bashrc] -> Class[ubuntu::basic] -> Class[ubuntu::s3cmd] -> Class[jekyll::jekyll]

# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/sbin/', '/usr/local/bin' ]
}
# Goes to /etc/puppet/manifests/site.pp
node default {
	include python
	include python::pip
	include python::virtualenv
	class { 'python::myvirtualenv':
		app_name => "botoenv",
		req_file => "/vagrant/Python/requirements.txt",
	}
}

# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/sbin/', '/usr/local/bin' ]
}
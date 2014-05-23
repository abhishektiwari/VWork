# Normally goes to /etc/puppet/manifests/site.pp
node default {
	include ubuntu::apt
	include ubuntu::basic
	include java7
	include ubuntu::bashrc
	class { "ubuntu::profile":
		pname    => 'set_java7',
		pcontent => 'java7/java.options',
	}
	include typesafe
	class { 'typesafe::scala':		
		version         => '2.10.4',
		local_installer => "true",
	}
	class { 'typesafe::play':		
		version         => '2.2.2',
		local_installer => "true",
	}
	class { 'typesafe::akka':		
		version         => '2.2.4',
		local_installer => "true",
	}
}


# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/sbin/', '/usr/local/bin' ]
}
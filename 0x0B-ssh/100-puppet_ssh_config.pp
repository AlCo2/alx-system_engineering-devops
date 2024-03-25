# create ssh config file with configuration
file { '/etc/ssh/ssh_config':
	ensure => file,
	content => "Host *\n PasswordAuthentication no\n IdentityFile ~/.ssh/school"
}

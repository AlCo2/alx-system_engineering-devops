# set up nginx server
package { 'nginx':
  ensure => installed,
}

exec {'add_header':
	command => 'sed -i "25i\	add_header X-Served-By \$hostname;" /etc/nginx/sites-available/default',
	provider => 'shell'
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

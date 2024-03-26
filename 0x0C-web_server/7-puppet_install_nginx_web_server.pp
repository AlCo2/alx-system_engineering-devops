# set up nginx server

exec { 'update system':
        command => '/usr/bin/apt-get update',
}

packege { 'nginx':
	ensure => installed,
}

file { '/var/www/html/index.html':
	ensure => file,
	content => "Hello World!"
}

exec {'redirect_me':
	command => 'sed -i "24i\	rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
	provider => 'shell'
}

exec {'error_404':
	command => 'sudo sed -i '25i\	error_page 404 /error_404.html;' /etc/nginx/sites-available/default'
	provider => 'shell'
}
service {'nginx':
	ensure => running,
	require => Package['nginx']
}

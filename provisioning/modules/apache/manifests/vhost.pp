class apache::vhost {

  file { "/data/logs":
    ensure => directory,
  }

  file { "/etc/apache2/conf-enabled/listherd.com.conf":
    owner   => 'apache',
    group   => 'apache',
    mode    => '0444',
    content => template('apache/listherd.com.conf.erb'),
    notify  => Service['apache2'],
    require => File['/data/logs']
  }

  service { 'apache2':
    ensure => running,
    enable => true,
  }

}

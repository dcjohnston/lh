#
# install apache and all modules
#
class apache::prerequisites inherits apache::params {

  $apache_packages = hiera('apache-packages::packages')

  package { $apache_packages:
    ensure => 'installed'
  }

  group {'apache':
    ensure => 'present'
  }

  user {'apache':
    ensure => 'present',
    gid => 'apache',
    require => Group['apache']
  }

  file { "${applicationroot}/${logdir}":
    ensure => 'directory',
    owner => 'apache',
    group => 'apache',
    recurse => true,
    mode => '0750'
  }

}

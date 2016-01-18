class lh::postinstall inherits lh::params {

  file{ '/etc/apparmor.d/usr.sbin.mysqld':
    ensure => absent
  }

}

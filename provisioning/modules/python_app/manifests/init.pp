class python_app{
  anchor { 'python_app::begin': } ->
  class { 'python':
    pip        => 'present',
    dev        => 'present',
    virtualenv => 'present',
    gunicorn   => 'absent',
  } ->
  python::virtualenv { 'listherd_env' :
    ensure => 'present',
    version => 'system',
    venv_dir => '/vagrant/listherd_env',
    requirements => '/data/applications/lh/requirements.txt',
    owner => 'vagrant',
    group => 'vagrant',
    cwd => '/data/applications/lh',
  } ->
  python::pip { 'django':
    pkgname => 'django',
    ensure => '1.9',
    virtualenv => '/vagrant/listherd_env',
  } ->
  python::pip { 'mysql_driver':
    pkgname => 'MySQL-python',
  }
  anchor { 'python_app:end': }
}

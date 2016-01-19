class lh::postinstall {
  exec {'create_static_files':
    command => '/vagrant/listherd_env/bin/python manage.py collectstatic --noinput',
    cwd => '/data/applications/lh/listherd',
  }
}

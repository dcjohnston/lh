class apache_app {
  anchor { 'apache_app::begin': } ->
  class { 'apache': } ->
  apache::vhost { 'listherd.com':
  port => '80',
  servername => 'listherd.com',
  serveradmin => 'webmaster@listherd.com',
  docroot => '/data/applications/lh',
  wsgi_daemon_process => 'lh',
  wsgi_daemon_process_options => {
    'python-path' => '/data/applications/lh/listherd:/data/applications/lh',
  },
  wsgi_process_group => 'lh',
  wsgi_script_aliases => {
    '/' => '/data/applications/lh/listherd/wsgi.py'
  },
  aliases => [
    {
      'alias' => '/static',
      'path' => '/data/applications/lh/static',
    },
  ],
  directories => [
    {
      'path' => '/data/applications/lh/static',
      'allow' => 'from all',
      'satisfy' => 'any',
    },
    {
      'path' => '/data/applications/lh',
      'allow' => 'from all',
      'satisfy' => 'any'
    },
  ],
  } ->
  anchor { 'apache_app::end': }
}

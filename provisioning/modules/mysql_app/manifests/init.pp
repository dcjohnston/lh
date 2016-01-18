class mysql_app {
  anchor { 'mysql_app::begin': } ->
  class { 'mysql::server':
    root_password => 'auto',
    remove_default_accounts => true,
  } ->
  mysql::db { 'mysql_app':
    user => 'listherd_db',
    password => 'insecure_local',
    host => 'localhost',
    grant => 'ALL'
  } ->
  anchor { 'mysql_app::end': }
}

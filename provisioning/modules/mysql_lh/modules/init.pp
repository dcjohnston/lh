class mysqllh {
  anchor { 'mysql_lh::begin': } ->
  class { 'mysql::server':
    root_password => 'auto',
    remove_default_accounts => true,
  } ->
  mysql::db {
    user => 'listherd_db',
    password => 'insecure_local',
    host => 'localhost',
    grant => 'ALL'
  } ->
  anchor { 'mysql_lh::end': }
}

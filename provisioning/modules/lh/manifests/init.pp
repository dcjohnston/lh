class lh {
  anchor { 'lh::begin': } ->
  class { 'lh::prerequisites': } ->
  class { 'apache_app': } ->
  class { 'mysql_app': } ->
  anchor { 'lh::end': }
}

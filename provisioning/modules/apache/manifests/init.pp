class apache {
  anchor { 'apache::begin': } ->
  class { 'apache::prerequisites': } ->
  class { 'apache::vhost': } ->
  anchor { 'apache::end': }
}

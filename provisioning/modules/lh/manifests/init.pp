class lh {
  anchor { 'lh::begin': } ->
  class { 'lh::prerequisites': } ->
  class { 'apache': } ->
  class { 'mysqllh':} ->
  class { 'lh::postinstall': } ->
  anchor { 'lh::end': }
}

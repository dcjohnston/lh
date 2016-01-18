class lh::prerequisites  {
  $additional_packages = hiera('additional_packages::packages')

  package {$additional_packages:
    ensure => 'installed'
  }

}

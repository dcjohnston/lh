class apache::params {
  $applicationroot = hiera('application::rootdir')
  $webroot = hiera('application::webroot')
  $logdir = hiera('application::logdir')
}

class incron::manage {
  include incron::params
  file { $incron::params::config_path:
    ensure  => directory,
    purge   => true,
    recurse => true,
    require => Package[$incron::params::package],
  }
}

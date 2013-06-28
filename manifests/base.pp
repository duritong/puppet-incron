class incron::base {
  include incron::params
  package { $incron::params::package:
    ensure => installed,
  }
  service { $incron::params::service:
    ensure => running,
    enable => true,
    require => Package[$incron::params::package],
  }
}

define incron::watch (
  $ensure     = present,
  $file,
  $event,
  $command,
) {
  include incron

  file{ "${incron::params::config_path}/${name}":
    ensure  => $ensure,
    content => "${file} ${event} ${command}",
    require => Package[$incron::params::package],
    notify  => Service[$incron::params::service],
  }
}

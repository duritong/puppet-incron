define incron::watch (
  $ensure     = present,
  $file,
  $event,
  $command,
) {

  file{ "/etc/incron.d/${name}":
    ensure  => $ensure,
    content => "${file} ${event} ${command}",
    require => Package['incron'],
    notify  => Service['incrond'],
  }
}

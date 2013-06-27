define incron::watch (
  $ensure     = present,
  $file,
  $event,
  $command,
) {
  include incron

  file{ "/etc/incron.d/${name}":
    ensure  => $ensure,
    content => "${file} ${event} ${command}",
    require => Package['incron'],
    notify  => Service['incrond'],
  }
}

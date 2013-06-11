define incron::watch (
  $ensure     = present,
  $file       = false,
  $event      = false,
  $command    = false,
) {

  if ( (!$file) or (!$event) or (!$command) ) {
    fail('Missing argument for incron::watch')
  }

  file{ "/etc/incron.d/${name}":
    ensure  => $ensure,
    content => "${file} ${event} ${command}",
    require => Package['incron'],
    notify  => Service['incrond'],
  }
}

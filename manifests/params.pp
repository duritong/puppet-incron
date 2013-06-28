class incron::params {
  $config_path = '/etc/incron.d'

  case $::osfamily {
    debian: {
      $package = 'incron'
      $service = 'incron'
    }
    default: {
      $package = 'incron'
      $service = 'incrond'
    }
  }
}

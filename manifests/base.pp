class incron::base {
  package{'incron':
    ensure => installed,
  }

  if $incron::prune_entries {
    file{'/etc/incron.d':
      ensure  => directory,
      owner   => root,
      group   => 0,
      mode    => '0644',
      recurse => true,
      purge   => true,
      force   => true,
      require => Package['incron'],
      before  => Service['incrond'],
    }
  }

  service{'incrond':
    ensure => running,
    enable => true,
    require => Package['incron'],
  }
}

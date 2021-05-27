package {'apache2':
    ensure => present
}
service {'apache2':
  enable => true,
  ensure => running

}

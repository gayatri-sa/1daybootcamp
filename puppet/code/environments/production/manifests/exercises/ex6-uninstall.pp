service {'apache2':
  ensure => stopped
}

package {'apache2':
    ensure => absent
}

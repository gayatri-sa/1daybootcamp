$multi_packages = ['curl', 'nano', 'wget']

package { $multi_packages:
    ensure => present,
}

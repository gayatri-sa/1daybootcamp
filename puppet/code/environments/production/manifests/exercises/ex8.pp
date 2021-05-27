# https://puppet.com/docs/puppet/7/lang_relationships.html
package {'nginx':
    ensure => present
}

service {'nginx':
    enable => true,
    ensure => running,
    require => 'Package[nginx]'
}

file {'sample-html':
    path => '/usr/share/nginx/html/index.html',
    content => 'Default HTML',
    ensure => present,
    notify => 'Service[nginx]'
}

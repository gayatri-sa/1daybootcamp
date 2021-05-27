# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::ex9_apachephp

# https://www.fosstechnix.com/how-to-install-php-on-ubuntu-20-04/
class exercises::ex9_apachephp {

    package {'apache2':
        ensure => installed
    }
    service {'apache2':
        enable => false,
        ensure => running,
        require => 'Package[apache2]'
    }
    package {'PHP-Apache-Module':
        name => 'libapache2-mod-php',
        ensure => installed,
        notify => 'Service[apache2]',
        require => Package['apache2']
    }

    $php_dependencies = ['apt-transport-https', 'ca-certificates', 'curl', 'software-properties-common']    
    package {$php_dependencies:
        ensure => installed
    }
    exec {'apt_update':
	command => 'add-apt-repository ppa:ondrej/php && apt-get update -y',
        path => '/usr/bin',
        creates => '/root/apt-done.txt',
        require => Package['software-properties-common'],
        before => File['apt-done']
    }
    package {'php7.4': 
        ensure => installed,
        require => [Package[software-properties-common], Exec['apt_update']]
    }

    $php_packages = ['php7.4-common', 'php7.4-mysql', 'php7.4-curl', 'php7.4-json', 'php7.4-cgi', 'php7.4-opcache', 'php7.4-mbstring', 'libapache2-mod-php7.0']
    package {$php_packages:
        ensure => installed,
        require => Package['php7.4'],
        notify => Service['apache2']
    }

    file {'apt-done':
        path => '/root/apt-done.txt',
        content => 'Done'
    }
}

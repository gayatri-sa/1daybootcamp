file {'copy-file':
  path => '/root/copy.txt',
  source => '/etc/puppetlabs/code/environments/production/manifests/exercises/dummy.txt',
  ensure => file
}

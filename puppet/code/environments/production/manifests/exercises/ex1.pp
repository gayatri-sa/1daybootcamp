file {'test1':
    path    => '/root/test.txt', 
    content => 'I am a file.',
    ensure => present
}

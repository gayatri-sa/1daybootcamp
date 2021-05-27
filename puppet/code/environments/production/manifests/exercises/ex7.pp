exec {'my-cmd':
    command => 'echo "Hello World" >> /root/exec.txt',
    creates => '/root/exec.txt',
    path => '/usr/bin'
}

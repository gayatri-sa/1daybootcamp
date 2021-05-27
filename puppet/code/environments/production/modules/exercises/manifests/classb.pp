# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::classb
class exercises::classb {
    exec {'add-to-fileB':
        command => 'echo "Line from classB" >> /root/class-dependency.txt',
	path => '/usr/bin'
    }
}

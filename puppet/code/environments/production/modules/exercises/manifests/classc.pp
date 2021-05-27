# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::classc
class exercises::classc {
    exec {'add-to-fileC':
        command => 'echo "Line from classC" >> /root/class-dependency.txt',
	path => '/usr/bin'
    }
}

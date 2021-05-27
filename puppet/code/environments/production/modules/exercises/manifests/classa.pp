# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::classa
class exercises::classa {
    $classAvariable = 'I am a variable from exercises::classa'

    exec {'add-to-fileA':
        command => 'echo "Line from classA" >> /root/class-dependency.txt',
	path => '/usr/bin'
    }
    # resources from classB will be included here but, puppet doesn't guarantee the resources will be executed after the exec resource above
    include exercises::classb
    
    # resources from classC will be included here and puppet adds a dependency ensuring that the classC resources will always be executed before the exec resource above
    require exercises::classc
}

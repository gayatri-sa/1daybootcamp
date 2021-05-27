# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::withparams
class exercises::withparams ($var1, $var2="I am the default value for var2") {

    file {'/root/withparams.txt':
        content => "$var1 -- $var2",
        ensure => present
    }
}

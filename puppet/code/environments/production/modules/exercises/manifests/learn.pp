# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::learn
class exercises::learn {
    notify {'debug':
      message => "I am from the learn class. The OS of this machine is $osfamily"
    }
}

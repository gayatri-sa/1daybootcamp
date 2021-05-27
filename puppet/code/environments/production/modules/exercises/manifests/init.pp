# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises
class exercises {

    # class declaration for classes with no parameters
    include exercises::learn
    class {'exercises::classa':}

    # class declaration for classes with parameters
    class {'exercises::withparams':
        var1 => 'Hello, I am from the main class in exercises module',
        var2 => 'I am overriding the default value for the param'
    }    

}

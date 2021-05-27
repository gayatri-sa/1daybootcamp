# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include forexercises::ex12_hiera


# Hiera will do a automatic lookup only for class parameters
# Anywhere else you need to call the lookup to get the hiera value 
# Please use fully qualified variable names in the lookup
class forexercises::ex12_hiera ($filecontent="Default Value") {

    notify {'filecontent':
        message => $filecontent
    }

    $testvar = lookup('somevalue')
    notify {'somevalue':
       message => $testvar
    }

}

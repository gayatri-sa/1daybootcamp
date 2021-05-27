# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include exercises::templates
class exercises::templates {
    $classvariable = 'I am a class variable in exercises::templates'

    # declare other classes
    include forexercises::classa
    class {'exercises::withparams':
        var1 => 'Var1 from exercises::templates'
    }

    # templates
    file {'/output1.txt':
        content => template("${module_name}/myerbtemplate.erb")
    }

    # Unlike erb templates, epp templates cannot directly access variables in the calling class without namespacing. Fully qualify variables or pass them in as parameters.
    # This means templates can use short names to access global variables (like $os or $trusted) and their own local variables, but must use qualified names (like $ntp::tinker) to access variables from any class.   
    # https://puppet.com/docs/puppet/5.5/lang_template_epp.html
    file {'/output2.txt':
        #content => epp("${module_name}/myepptemplate.epp")
        #content => epp("${module_name}/myepptemplate.epp", {'templateVar1' => 'I am the value for template var1', 'templateVar2' => 'I am the value for template var2'})
        content => epp("${module_name}/myepptemplate.epp", {'templateVar1' => 'I am the value for template var1'})
    }
}

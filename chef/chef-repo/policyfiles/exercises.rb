# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'exercises'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'exercises::ex9', 'php'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'

# https://supermarket.chef.io/cookbooks/php
cookbook 'php', '~> 8.1.0', :supermarket
cookbook 'exercises', path: '../cookbooks/exercises'

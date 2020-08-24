# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'learn_chef_cookbook'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'learn_chef_cookbook::default'

# Specify a custom source for a single cookbook:
cookbook 'learn_chef_cookbook', path: '.'
cookbook 'mysql', '~> 8.7.3', :supermarket
cookbook 'mysql2_chef_gem', '~> 2.1.0', :supermarket
cookbook 'database', '~> 6.1.1', :supermarket
cookbook 'poise-python', '~> 1.7.0', :supermarket
cookbook 'apache2', '~> 8.3.0', :supermarket

name 'learn_chef_cookbook'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures learn_chef_cookbook'
version '0.1.0'
chef_version '>= 15.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/learn_chef_cookbook/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/learn_chef_cookbook'

# Dependencies
depends 'mysql', '~> 8.7.3'
depends 'mysql2_chef_gem', '~> 2.1.0'
depends 'database', '~> 6.1.1'
depends 'poise-python', '~> 1.7.0'
depends 'apache2', '~> 8.3.0'

# SIMPLE RECIPE INSTALLING APACHE
# define variable
apache = value_for_platform_family(
    ['rhel', 'fedora', 'suse'] => 'httpd',
    'debian' => 'apache2'
)

# isntall package using distrib's manager
package apache

# send file to node
file '/var/www/html/index.html' do
    content '<html>Coming soon!</html>'
end

# Enable and start the service (useful if the service has been shutdown manually)
service apache do
    action [:enable, :start]
end
default['apache_settings'] =  value_for_platform_family(
    ['rhel', 'fedora', 'suse'] => {'service' => 'httpd', 'user' => 'apache'},
    'debian' => {'service' => 'apache2', 'user' => 'www-data'}
)

# application settings
default['app_repo_url'] = 'https://github.com/whelmed/ansible_demo'
default['download_dir'] = '/tmp/appdir'
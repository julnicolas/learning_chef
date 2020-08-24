# service['apache2'] is defined in the apache2_default_install resource but other resources are currently unable to reference it.  To work around this issue, define the following helper in your cookbook:
service 'apache2' do
    extend Apache2::Cookbook::Helpers
    service_name lazy { apache_platform_service_name }
    supports restart: true, status: true, reload: true
    action :nothing
  end
  
  apache2_install 'default_install'
  apache2_module 'headers'
  apache2_module 'ssl'
  
  apache2_default_site 'foo' do
    default_site_name 'my_site'
    port '443'
    action :enable
  end
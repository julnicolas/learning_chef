# install mysql

# mysql client setup
mysql_client 'default' do
    action :create
end

password = '123456'

# make sure the mysql service exists and is running
mysql_service 'default' do
    bind_address '127.0.0.1'
    port '3306'
    data_dir '/data'
    initial_root_password password
    socket '/var/run/mysqld/mysqld.sock' if platform_family?('debian')
    socket '/var/lib/mysql/mysql.sock' if platform_family?('rhel', 'fedora', 'suse')
    action [:create, :start]
end

mysql2_chef_gem 'default' do
    action :install
end

conn = {
    :host => '127.0.0.1',
    :username => 'root',
    :password => password
}

# create the db
mysql_database 'appdata' do
    connection conn
    action :create
end

# grant access
mysql_database_user 'appuser' do
    connection conn
    password password
    action [:create, :grant]
end
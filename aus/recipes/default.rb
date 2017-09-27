# Install some stuff.
#["mysql-client"].each do |pkg|
#  package pkg do
#    action :install
#  end
#end

bash "install apache2" do
  user "root"
  group "root"
  code <<-EOS
    sudo apt-get install apache2 -y
  EOS
end

# Replace php.ini file.
template '/etc/php5/apache2/php.ini' do
  source "php.ini"
end

# Replace apache2.conf file.
template '/etc/apache2/apache2.conf' do
  source "apache2.conf"
end

#bash "start apache2" do
#  user "root"
#  group "root"
#  code <<-EOS
#    sudo systemctl start apache2
#  EOS
#end

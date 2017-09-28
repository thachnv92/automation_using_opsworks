# Install some stuff.
["apache2"].each do |pkg|
  package pkg do
    action :install
  end
end

# Replace apache2.conf file.
template '/etc/apache2/apache2.conf' do
  source "apache2.conf"
end

# Replace index.html file.
template '/var/www/html/index.html' do
  source "index.html"
end

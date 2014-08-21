yum_package "php-soap" do
  action :install
end

service 'httpd' do 
   action :restart 
end

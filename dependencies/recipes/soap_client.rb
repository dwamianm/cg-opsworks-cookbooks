execute 'sudo yum install php-soap' do
      action :run
end

service 'httpd' do 
   action :restart 
end

node[:deploy].each do |application, deploy|

  assets_folder = "#{deploy[:deploy_to]}/current/public_html/assets"
  runtime_folder = "#{deploy[:deploy_to]}/current/protected/runtime"

  execute "chmod -Rf 777 #{assets_folder} #{runtime_folder}" do
    command "chmod -Rf 777 #{assets_folder} #{runtime_folder}"
  end

  staging_env_file = "#{deploy[:deploy_to]}/current/env.php"
  prod_env_file = "#{deploy[:deploy_to]}/current/chef/deploy/env.php"

  file "#{staging_env_file}" do
    action :delete
  end
  execute "cp #{prod_env_file} #{deploy[:deploy_to]}/current/" do
      command "cp #{prod_env_file} #{deploy[:deploy_to]}/current/"
  end

end

node[:deploy].each do |application, deploy|

  assets_folder = "#{deploy[:deploy_to]}/current/public_html/assets"
  runtime_folder = "#{deploy[:deploy_to]}/current/protected/runtime"

  execute "chmod -Rf 777 #{assets_folder} #{runtime_folder}" do
    command "chmod -Rf 777 #{assets_folder} #{runtime_folder}"
  end

end

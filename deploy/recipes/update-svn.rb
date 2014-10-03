node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  execute "svn up #{application_folder}" do
    command "svn up #{application_folder}"
  end

end
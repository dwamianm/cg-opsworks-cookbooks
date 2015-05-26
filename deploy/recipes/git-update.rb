node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository deploy[:scm][:repository]
    destination "#{application_folder}"
    user deploy[:user]
    group deploy[:group]
    username deploy[:scm][:user]
    password deploy[:scm][:password]
    action :sync
  end

end

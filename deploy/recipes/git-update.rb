node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository deploy[:scm][:repository]
    destination "#{application_folder}"
    reference "master"
    action :sync
  end

end

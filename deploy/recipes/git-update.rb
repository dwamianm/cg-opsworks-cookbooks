node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository deploy[:scm][:repository]
    destination "#{application_folder}"
    ssh_key deploy[:scm][:ssh_key]
    username "mcleish@cornersix.com"
    action :sync
  end

end

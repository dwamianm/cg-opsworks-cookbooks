node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository deploy[:git_repository]
    revision deploy[:git_revision]
    destination "#{application_folder}"
    action :sync
    ssh_wrapper "ssh -i deploy[:scm][:ssh_key]"
  end

end

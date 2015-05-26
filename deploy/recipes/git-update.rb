node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository node[:app_name][:git_repository]
    revision node[:app_name][:git_revision]
    action :sync
    notifies :run, "bash[compile_app_name]"
  end

end

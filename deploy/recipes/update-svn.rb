node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  subversion "Update SVN" do
    repository deploy[:scm][:repository]
    revision "HEAD"
    destination "#{application_folder}"
    user deploy[:user]
    group deploy[:group]
    svn_username deploy[:scm][:user]
    svn_password deploy[:scm][:password]
    provider Chef::Provider::SubversionInit
    action :sync
  end

end


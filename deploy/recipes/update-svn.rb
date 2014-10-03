node[:deploy].each do |application, deploy|

  subversion "Update SVN" do
    repository deploy[:scm][:repository]
    user deploy[:user]
    group deploy[:group]
    svn_username deploy[:scm][:user]
    svn_password deploy[:scm][:password]
    provider Chef::Provider::SubversionInit
    action :sync
  end

end


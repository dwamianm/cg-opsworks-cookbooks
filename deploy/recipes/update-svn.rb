node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  subversion "cgarena_v2" do
    repository "https://cornersix.svn.cloudforge.com/cgarena_v2/trunk/"
    revision "HEAD"
    destination "#{application_folder}"
    action :sync
  end

end
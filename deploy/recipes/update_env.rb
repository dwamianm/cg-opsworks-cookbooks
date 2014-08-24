node[:deploy].each do |application, deploy|
    staging_env_file = "#{deploy[:deploy_to]}/current/env.php"
    prod_env_file = "#{deploy[:deploy_to]}/current/chef/deploy/env.php"

    execute "Update Env File" do
      command "rm -Rf #{staging_env_file}"
      command "cp #{prod_env_file} #{deploy[:deploy_to]}/current/"
    end
end

node[:deploy].each do |application, deploy|
    staging_config_main_file = "#{deploy[:deploy_to]}/current/protected/config/main.php"
    staging_config_console_file = "#{deploy[:deploy_to]}/current/protected/config/console.php"
    prod_config_main_file = "#{deploy[:deploy_to]}/current/chef/deploy/config/main.php"
    prod_config_console_file = "#{deploy[:deploy_to]}/current/chef/deploy/config/console.php"

    execute "Copy config files" do
      command "rm -Rf #{staging_config_main_file} #{staging_config_console_file}"
      command "cp #{prod_config_main_file} #{deploy[:deploy_to]}/current/protected/config/"
      command "cp #{prod_config_console_file} #{deploy[:deploy_to]}/current/protected/config/"
    end
end

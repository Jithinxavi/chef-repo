knife ec2 server create 'role[production]' 'role[base]' 'role[solvency_database_master]' 'role[solvency]' 'role[solvency_run_migrations]' 'recipe[radiant::db_bootstrap]' -S ec2-keypair -I ~/.ssh/ec2-keypair.pem -x ubuntu -G default,firewall -i ami-2d4aa444
#!/usr/bin/ruby


unless ARGV.length == 1
  puts "bootstrap <ip_address>"
  Process.exit
end

@roles = %w(production base solvency_database_master solvency solvency_run_migrations)
@sudo  = 'tnewton'

def roles_cmd
  @roles.map{ |x| "'role[#{x}]'" }.join(",")
end

def ipaddress
  ARGV[0]
end

cmd = "knife bootstrap #{ipaddress} -r #{roles_cmd} --sudo -x #{@sudo} -P may30bir"
puts cmd

#knife bootstrap ARGV[0] -r 'role[production]','role[base]','role[radiant_database_master]','role[radiant]','role[radiant_run_migrations]','recipe[radiant::db_bootstrap]'
# knife ec2 server create 'role[production]' 'role[base]' \
# 'role[radiant_database_master]' 'role[radiant]' \
# 'role[radiant_run_migrations]' 'recipe[radiant::db_bootstrap]' \
# -S rails-quick-start -I ~/.ssh/rails-quick-start.pem -x ubuntu \
# -G default -i ami-88f504e1 -f m1.small
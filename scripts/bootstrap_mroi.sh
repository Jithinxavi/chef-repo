#!/usr/bin/ruby


unless ARGV.length == 1
  puts "bootstrap <ip_address>"
  Process.exit
end

@roles = %w(production base mroi_database_master mroi mroi_run_migrations)
@sudo  = 'tnewton'

def roles_cmd
  @roles.map{ |x| "'role[#{x}]'" }.join(",")
end

def ipaddress
  ARGV[0]
end

cmd = "knife bootstrap #{ipaddress} -r #{roles_cmd} --sudo -x #{@sudo} -P may30bir"
puts cmd

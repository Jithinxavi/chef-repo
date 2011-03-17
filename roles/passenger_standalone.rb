name "passenger_standalone"
description "Passenger/Rails Stack with MySQL"
run_list(
  "recipe[apache2]",
#  "recipe[rails]",
  "recipe[passenger_apache2]",
  "recipe[passenger_apache2::mod_rails]",
#  "recipe[passenger_apache2::web_app]",
  "recipe[mysql::server]",
  "recipe[r]")
#  "recipe[application]")
override_attributes "mysql" => { "server_root_password" => "" }
override_attributes "passenger" => { "version" => "3.0.5" }

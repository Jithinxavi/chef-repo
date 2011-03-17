name "solvency"
description "Solvency generic applciation"
run_list(
  "recipe[mysql::client]",
  "recipe[apache2]",
  #{}"recipe[passenger_apache2]",
  #{}"recipe[passenger_apache2::mod_rails]",
  #{}"recipe[passenger_apache2::web_app]",
  "recipe[application]",
  "recipe[r]"
)

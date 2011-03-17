name "solvency_database_master"
description "Database master for the solvency application."
run_list(
  "recipe[database::master]"
)

name "mroi_database_master"
description "Database master for the mroi application."
run_list(
  "recipe[database::master]"
)

name "solvency"
description "Solvency generic applciation"
run_list(
  "recipe[mysql::client]",
  "recipe[apache2]",
  "recipe[application]",
  "recipe[r]"
)

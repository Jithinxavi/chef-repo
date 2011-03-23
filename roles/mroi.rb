name "mroi"
description "MROI generic applciation"
run_list(
  "recipe[mysql::client]",
  "recipe[r]",
  "recipe[apache2]",
  "recipe[custom_application]"
)

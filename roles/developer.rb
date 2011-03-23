name "developer"
description "Create a developer server"
run_list(
  "recipe[git::server]"
)

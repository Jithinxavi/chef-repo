name "mroi_run_migrations"
description "Run db:migrate on demand for mroi"
override_attributes( "apps" => { "mroi" => { "production" => { "run_migrations" => true } } })

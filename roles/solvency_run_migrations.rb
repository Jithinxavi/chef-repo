name "solvency_run_migrations"
description "Run db:migrate on demand for solvency"
override_attributes( "apps" => { "solvency" => { "production" => { "run_migrations" => true } } })

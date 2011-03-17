current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "newtonlabs"
client_key               "#{current_dir}/newtonlabs.pem"
validation_client_name   "mckinsey-validator"
validation_key           "#{current_dir}/mckinsey-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/mckinsey"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
# EC2:
knife[:aws_access_key_id]     = "AKIAIOVZ5JWR42ITXE2A"
knife[:aws_secret_access_key] = "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"
#knife[:aws_ssh_key_id] = "Thomas Newton Mac"

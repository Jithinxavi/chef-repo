#
# Cookbook Name:: application
# Recipe:: rubygems
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

app     = node.run_state[:current_app]
version = app['rubygems']['version']

# See if defined, if so first upgrade to 1.6 then downgrade to specified version
if version
  puts "updating rubygems to #{version}"
  user "root"
  bash "update ruby gems" do
    code <<-EOH
      gem update --system
      gem update --system #{version}
    EOH

    not_if do
      Gem::Version.new(`gem -v`) == Gem::Version.new(version)
    end
  end
end

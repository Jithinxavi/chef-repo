#
# Cookbook Name:: build-essential
# Recipe:: default
#
# Copyright 2008-2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License 
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node[:platform]
when "ubuntu","debian"
  package "r-base-dev" do 
    action :install
  end
end

gem_package "rsruby" do
  action :install
  options "-- --with-R-dir=/usr/lib/R --with-R-include=/usr/share/R/include"
end

link "/usr/local/lib/libR.so" do
  to "/usr/lib/R/lib/libR.so"
end

execute "ldconfig" 

bash "install-r-modules" do
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget http://cran.r-project.org/src/contrib/quadprog_1.5-3.tar.gz
  wget http://cran.r-project.org/src/contrib/BB_2011.2-1.tar.gz
  R CMD INSTALL  quadprog_1.5-3.tar.gz
  R CMD INSTALL  BB_2011.2-1.tar.gz
  EOH
end
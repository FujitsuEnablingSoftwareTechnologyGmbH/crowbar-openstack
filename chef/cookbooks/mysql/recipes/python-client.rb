#
# Cookbook Name:: mysql
# Recipe:: python-client
#
# Copyright 2012, SUSE Linux Products GmbH
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

case node[:platform]
when "suse"
  package "python-mysql"     # C-extensions MySQL driver
  package "python-PyMySQL"   # pure-Python MySQL driver
when "redhat", "centos"
  package "MySQL-python"
else
  package "python-mysqldb"
end
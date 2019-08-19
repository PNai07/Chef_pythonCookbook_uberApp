#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3' do
  action :install
end

package 'python-pip' do
  action :install
end

execute 'python-pip install plugins' do
  command 'pip install flask==0.10.1'
end

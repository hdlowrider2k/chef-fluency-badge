#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'postresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgesql-setup initbd'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end

#
# Cookbook:: postgreql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
 

package 'postgresql-server' do 
	notifies :run, 'execute[postgresql-setup]'
end

execute 'postgresql-setup' do 
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:start, :enable]
end


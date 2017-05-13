#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


if node['platform_family'] == "rhel" 
	pkg = "httpd"
elsif node['platform_family'] == "debian"
	pkg = "apache2"
end
package 'apache2' do
       package_name pkg
       action [:install]
end 

service 'apache2' do
	service_name 'httpd'	
	action [:start, :enable]
end

#include_recipe 'apache::website'

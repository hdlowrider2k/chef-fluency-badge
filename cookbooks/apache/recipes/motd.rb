hostname = node['hostname']
platform = node['platform']
platform_version = node['platform_version']
file '/etc/motd' do
	content "Hostname: #{hostname} #{platform} #{platform_version}"
end

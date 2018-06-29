class LandingPage
	require 'rspec/expectations'
	include PageObject
	div(:user_info, :css => '.welcomeName')
	select_list(:organization, :name => 'tenant_id')
end

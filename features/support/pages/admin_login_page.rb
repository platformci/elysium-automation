class LoginPage
	include PageObject
	require 'rspec/expectations'
	page_url('https://10.10.110.27:8888/api/risky/emails')
	page_url('https://10.10.110.27:8891/api/sparkline')
	page_url('https://10.10.110.30/launchpad')
	text_field(:username, :css => '#username')
	text_field(:password, :css => '#password')
	button(:login, :value => 'Login')
	select_list(:organization, :name => 'tenant_id')
	

	def login_with(username, password)
		self.username = username
		self.password = password
		sleep(30)
		login
	end
	#def organization; @browser.select_list(:name => 'tenant_id') end
	#alias :organization_element :organization

end

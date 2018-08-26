require 'yaml'
Given /^I am in Login page$/ do
	visit_page(LoginPage)
end
And /^I will login with demo user credentials$/ do
	visit_page(LoginPage) do |page|
		path = './config/yml/application.yml'
    	yml = YAML::load(File.open(path))
		page.username = yml['login']['user']
		page.password = yml['login']['password'] 
		page.organization_element[1].click
		page.login

	end
end

And /^I will check that I am logged-in$/ do
	visit_page(LandingPage) do |page|
		expect(page.user_info_element.text).to include('Demo Admin')
	end		
end

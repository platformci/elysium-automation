@sanity
Feature: Login with demo_admin account
  As a demo_admin user
  I should be able to login to the app
  so that I can perform the admin actions

	Scenario: Login with Demo user
		Given I am in Login page
		And I will login with demo user credentials
		Then I will check that I am logged-in
		

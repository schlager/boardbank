Feature: Sign up to BoardBank as an Organization
 
  As a future BoardBank Organization
  So that I can utilize the website
  I want to be able to sign up with my email and create an account.

Background:I am on the sign up page
	Given I am on the sign up page

Scenario: Create a user account
	When I fill in "Email" with "org@example.com"
	  And I fill in "Password" with "password"
	  And I fill in "Password confirmation" with "password"
 	  And I fill in "user_firstname" with "Test"
	  And I fill in "user_lastname" with "User"
	  And I select "Alabama" from "user_state"
	  And I press "Sign up"
	  Then I should be on the homepage
	  And I should see "signed up successfully."


Scenario: Sign up with conflicting passwords
	When I fill in "Email" with "badOrg@example.com"
	  And I fill in "Password" with "openSesame"
	  And I fill in "Password" with "closedSesame"
	  And I press "Sign up"
	  Then I should see "Password doesn't match confirmation"


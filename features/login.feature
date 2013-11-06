Feature: Login
	In order to access 
	As a Student
	I want input email and password

Background:
	Given I am registered as Student
	When I am in the main page
	Then I should see the fields email and password

Scenario: Login
	When I fill the field email with a valid email
	And I fill the field password with the right password
	And I push the button "Login"
	Then I should access in the system

Scenario: Failed login due to wrong email
	When I fill the field email with a invalid email
	And I fill the field password with the right password
	And I push the button "Login"
	And I should see "Invalid email"

Scenario: Failed login due to wrong password
	When I fill the field email with a valid email
	And I fill the field password with a wrong password
	And I push the button "Login"
	And I should see "Incorrect password"

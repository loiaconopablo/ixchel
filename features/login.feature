Feature: Login
	In order to access 
	As a Student
	I want input email and password

Scenario: Login
	Given I am in the login page
	When I fill the field login email with "npaez@gmail.com"
	And I fill the field login password with "1234"
	And I push the button "Iniciar sesion"
	Then I should see "npaez@gmail.com"


Feature: Login
	In order to access 
	As a Student
	I want input email and password

Background:
	Given I am signed in as teacher
	And I am in page Register student
	When I fill the field name with "Maria"
	And I fill the field lastname with "Gonzalez"
	And I fill the field email with "maria@correo.com"
	And I fill the field password with "1234"
	And I fill the field confirm_password with "1234"
	And I push the button "Registrar"
	Then I should see "Alumno registrado"

Scenario: Login
	Given I am in the login page
	When I fill the field login email with "maria@correo.com"
	And I fill the field login password with "1234"
	And I push the button Iniciar sesion
	Then I should see "maria@correo.com"


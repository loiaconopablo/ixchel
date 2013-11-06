Feature: Students
	In order to see a list of the students
	As a Teacher
	I want to see a list of the students in this course

Background:
	Given I am signed in as teacher

Scenario: Register Student
	Given I am in page Register student
	When I fill the field name with "Luis"
	And I fill the field lastname with "Perez"
	And I fill the field email with "luis@correo.com"
	And I fill the field password with "1234"
	And I fill the field confirm_password with "1234"
	And I push the button "Registrar"
	Then I should see "Alumno registrado"

Scenario: Delete student
	Given I am in page list of students
	And I push the button Eliminar
	Then I should see "Alumno eliminado"

Scenario: Delete all student
	Given I am in page List of students
	And I push the button Eliminar todos
	Then I should see "Todos los alumnos fueron eliminados"

Scenario: See a list of the students
	When push the button Lista de alumnos
	Then I should see all of the students registered in the course
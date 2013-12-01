Feature: Tasks 
	In order to management all tasks
	As a Teacher
	I want to create and see tasks

Background:
	Given I am a teacher

Scenario: Create a Task
	Given I am in new task page
	Then I fill the fields with valid information
	When I push the button "Crear"
	And I should see "Tarea Creada Correctamente"

Scenario: See tasks
	Given I am in Tasks page
	Then I should see "Titulo"
	And I should see "Fecha Limite"



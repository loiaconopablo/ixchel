Feature: Tasks 
	In order to management all tasks
	As a Student
	I want to create and see tasks

Background:
	Given I am a student

Scenario: See tasks
	Given I am in Tasks page
	Then I should see "Titulo"
	And I should see "Fecha Limite"

Scenario: See my done tasks
	Given there is a done task
	When I push the button Tareas Realizadas
	Then I should see "Titulo"
	And I should see "Fecha Limite"
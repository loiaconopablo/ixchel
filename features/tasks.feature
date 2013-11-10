Feature: Tasks
	In order to management all tasks
	As a Teacher an Student
	I want to create and see al tasks

Scenario: Create a Task
	Given I am a teacher
	And I am in task page
	And I push create a new task
	And I fill the fields
	Then I should see "Tarea creada"

Scenario: See tasks
	Given I am in Tasks page
	Then I should see "Titulo"
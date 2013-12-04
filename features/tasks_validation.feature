Feature: Validación de errores
  In order to register tasks' times
  As a Student I want to write my estimation and the real time
  I spent to do a task

Background:
  Given I am a student
  And there is a task "Tarea 1"

Scenario: Register estimated time with negative number or letters
  When I fill estimated time with negative number
  Then I should see "Campo llenado incorrectamente: debe contener numero positivo"

Scenario: Register real time with negative number or letters
  When I fill real time with negative number
  Then I should see "Campo llenado incorrectamente: debe contener numero positivo"
Feature: Validación de errores
  In order to register tasks' times
  As a Student I want to write my estimation and the real time
  I spent to do a task

Background:
  Given I am a student
  And there is a task "Tarea 1"

Scenario: Register estimated time with negative number
  When I fill estimated time with negative number
  Then I should see "El tiempo estimado no deber ser negativo"

Scenario: Register real time with negative number
  When I fill real time with negative number
  Then I should see "El tiempo real no deber ser negativo"

Scenario: Register estimated time with letters
  When I fill estimated time with letters
  Then I should see "El tiempo estimado deben ser digitos"

Scenario: Register real time with letters
  When I fill real time with letters
  Then I should see "El tiempo real deben ser digitos"
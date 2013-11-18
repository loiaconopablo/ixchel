Feature: Register times
  In order to register tasks' times
  As a Student
  I want to write my estimation and the real time I spent to do a task

Background:
  Given I am a Student
  And there is a task "Tarea 1"
  
Scenario: Register with empty fields
  When I do not fill any fields
  Then I should see "El tiempo estimado es obligatorio"

Scenario: Register only time spent
  When I only fill real time
  Then I should see "El tiempo estimado es obligatorio"

Scenario: Register only estimated time
  When I only fill estimated time
  Then I should see "Tarea guardada correctamente"

Scenario: Register times successfully
  When I fill estimated and real time
  Then I should see "Tarea guardada correctamente"
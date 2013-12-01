Feature: Ver estado global de los alumnos y tareas

Background:

Given I am a teacher
Given I have a student with name "Adrian" and last name "Paenza" that has not finished a task
#Given I have a student with name "Pedro" and last name "Gomez" that has finished all task

Scenario: See done tasks, with one student that not finished a task

#When push the button Estado global de tareas
#Then I should see "Adrian"
#And I should see "Paenza"
#Then I should see "NO CUMPLIO"


Scenario: See done tasks, with a student that finished all task

#When push the button Estado global de tareas
#Then I should see "Pedro"
#And I should see "Gomez"
#Then I should see "CUMPLIO"

Scenario: See done tasks, with all student that finished all task

#Given "Adrian" complete a task before the limit date
#When push the button Estado global de tareas
#Then I should see "Adrian"
#And I should see "Paenza"
#Then I should see "CUMPLIO"

Feature: Ver estado global de los alumnos y tareas

Scenario: See done tasks, with a student that not finished a task

Given I login with Roberto, user default
#Then Roberto Complete all task
Given I am a teacher
When push the button Estado global de tareas
Then I should see "Roberto"
And I should see "Saenz"
Then I should see 'Le quedaron tareas sin estimar'

Scenario: See done tasks, with a student that finished all task

Given I have a student with name "Pedro" and last name "Gomez" that has finished all task
Given I am a teacher
When push the button Estado global de tareas
Then I should see "Pedro"
And I should see "Gomez"
Then I should see "Estimo todas las tareas vencidas"

Scenario: See done tasks, with all student that finished all task

Given I login with Roberto, user default
Then Roberto Complete all task
Given I am a teacher
When push the button Estado global de tareas
Then I should see "Roberto"
And I should see "Saenz"
Then I should see "Pedro"
And I should see "Gomez"
Then I should not see "Le quedaron tareas sin estimar"

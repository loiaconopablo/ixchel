Feature: Grilla de alumnos que no cumplieron
  In order to management all tasks     
  As a Teacher     
  I want to see all tasks with state at actual date 

 
Background:
 Given I am a teacher
 
Scenario: See done tasks     
  Given I am in Tasks page     
  When I push the button "Ver quien cumplio"     
  Then I should see "Nombre"     
  And I should see "Email"
  And I should see "Estado"

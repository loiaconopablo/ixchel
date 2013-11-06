Feature: Tasks
  In order to get employees
  As a teacher
  I want to publish my tasks

  Background:
  	Given I am logged in as teacher

  Scenario: Create new task
    Given I access the new task page
    When I fill the title with "New Task"
		And confirm the new task    
    Then I should see "task created"
    And I should see "New Task" in My tasks

  Scenario: Edit task
    Given I have "Programmer vacancy" task in My tasks
    And I edit it
    And I set title to "New Task!!!"
    And I save the modification
    Then I should see "task updated"
    And I should see "New Task!!!" in My tasks

  Scenario: Delete task
    Given I have "New Task" task in My tasks
    Given I delete it
    Then I should see "task deleted"
    And I should not see "New Task!!!" in My tasks    

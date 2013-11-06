Feature: List of Students
	In order to see a list of the students
	As a Teacher
	I want to see a list of the students in this course

Background: 
	Given I signed in as Teacher

Scenario: See a list of the students
	When push the button "List of students"
	Then I should see all of the students registered in the course

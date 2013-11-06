Feature: Register Student
	In order to have all students
	As a Teacher
	I want to register all students in my course

Background:
	Given I am signed in as Teacher
	And I am in page Register Student

Scenario: Register Student
	When I fill the field Name
	And I fill the field Lastname
	And I fill the field Email
	And I fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "The student was created successfully"

Scenario: Register Student with differents passwords
	When I fill the field Name
	And I fill the field Lastname
	And I fill the field Email
	And I fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "The passwords do not match"

Scenario: Register Student without Name
	When I do not fill the field Name
	And I fill the field Lastname
	And I fill the field Email
	And I fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "All fields are mandatory"

Scenario: Register Student without Lastname
	When I fill the field Name
	And I do not fill the field Lastname
	And I fill the field Email
	And I fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "All fields are mandatory"

Scenario: Register Student without Email
	When I fill the field Name
	And I fill the field Lastname
	And I do not fill the field Email
	And I fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "All fields are mandatory"

Scenario: Register Student without Password
	When I fill the field Name
	And I fill the field Lastname
	And I fill the field Email
	And I do not fill the field Password
	And I fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "All fields are mandatory"

Scenario: Register Student without Confirm Password
	When I fill the field Name
	And I fill the field Lastname
	And I fill the field Email
	And I fill the field Password
	And I do not fill the field Confirm Password
	And I push the button "Create Student"
	Then I should see "All fields are mandatory"

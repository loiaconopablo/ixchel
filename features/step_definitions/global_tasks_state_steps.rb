Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has not finished a task$/) do |nombre, apellido|
	alumno = User.create(:email => 'alumno@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234")
	
	task1 = Task.create(:title => 'Tarea 1',
											:limit_date => Date.new(2013, 11, 01))

	task2 = Task.create(:title => 'Tarea 2',
											:limit_date => Date.new(2013, 11, 02))
                           
end

Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has finished all task$/) do |nombre, apellido|
  pending # express the regexp above with the code you wish you had
end

When(/^push the button Estado global de tareas$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^"(.*?)" complete a task before the limit date$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


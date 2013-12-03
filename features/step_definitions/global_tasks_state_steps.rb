Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has not finished a task$/) do |nombre, apellido|
user1 = User.create(:email => 'test@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234")
					
user_task1 = UserTask.create(	:user => user1,
															:task => task1,
															:estimated_time => 20)				
                           
end

Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has finished all task$/) do |nombre, apellido|
user2 = User.create(:email => 'test@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234")

task3 = Task.create(:title => 'Tarea 3',
					:limit_date => Date.new(2013, 11, 03))
					
task4 = Task.create(:title => 'Tarea 4',
					:limit_date => Date.new(2013, 11, 04))
					
user_task1 = UserTask.create( :user => user2,
															:task => task3,
															:estimated_time => 20)
															
user_task1 = UserTask.create( :user => user2,
															:task => task4,
															:estimated_time => 20)		
end

When(/^push the button Estado global de tareas$/) do
	page.should have_content('Ver Estado Global')
  click_link('Ver Estado Global')
end

Given(/^"(.*?)" complete a task before the limit date$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


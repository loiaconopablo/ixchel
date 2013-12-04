Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has not finished a task$/) do |nombre, apellido|
user1 = User.create(:email => 'user1@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234") 
visit '/login'
fill_in('user[email]', :with => 'user1@tareas.com')
fill_in('user[password]', :with => '1234')
click_button('Iniciar sesion')
 							 
visit '/tasks/latest'
click_link('Estimar', match: :first)
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')	
                           
end

Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has finished all task$/) do |nombre, apellido|
user2 = User.create(:email => 'user1@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234")
visit '/login'
fill_in('user[email]', :with => 'user2@tareas.com')
fill_in('user[password]', :with => '1234')
click_button('Iniciar sesion')	

visit '/tasks/latest'
click_link('Estimar', match: :first)
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')									 			 

end

When(/^push the button Estado global de tareas$/) do
	page.should have_content('Ver Estado Global')
  click_link('Ver Estado Global')
end

Given(/^"(.*?)" complete a task before the limit date$/) do |arg1|
 @tarea = Task.get(2)
end


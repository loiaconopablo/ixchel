Given(/^I am a teacher$/) do
  visit '/login'
  fill_in('user[email]', :with => 'npaez@gmail.com')
  fill_in('user[password]', :with => '1234')
  click_button('Iniciar sesion')
end

Given(/^I am in new task page$/) do
  visit '/tasks/new'
end

Then(/^I fill the fields with valid information$/) do
  fill_in('task[title]', :with => 'Ejemplo de Titulo de Tarea')
  fill_in('task[limit_date]', :with => '2011-12-13')
end

Given(/^I am in Tasks page$/) do
  visit '/tasks/latest'
end

Given(/^there is a done task$/) do
	visit '/tasks/new'
  fill_in('task[title]', :with => 'Ejemplo de Titulo de Tarea')
  fill_in('task[limit_date]', :with => '2011-12-13')
end

When(/^I push the button Tareas Realizadas$/) do
  visit '/user_tasks/latest'
end
 



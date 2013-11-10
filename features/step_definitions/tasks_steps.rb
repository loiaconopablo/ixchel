Given(/^I am a teacher$/) do
  page.should have_content('Registrar')
end

Given(/^I am in task page$/) do
  page.should have_content('Lista de Tareas')
end

Given(/^I push create a new task$/) do
  visit '/tasks/create'
end

Given(/^I fill the fields$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am in Tasks page$/) do
  visit '/tasks/latest'
end

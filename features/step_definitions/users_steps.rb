Given(/^I am signed in as teacher$/) do
  visit '/login'
  fill_in('user[email]', :with => 'npaez@gmail.com')
  fill_in('user[password]', :with => '1234')
  click_button('Iniciar sesion')
end

Given(/^I am in page Register student$/) do
  visit '/users/latest'
  click_button('Delete all')
  visit '/register'
end

When(/^I fill the field name with "(.*?)"$/) do |arg1|
  fill_in('user[name]', :with => arg1)
end

When(/^I fill the field lastname with "(.*?)"$/) do |arg1|
  fill_in('user[lastname]', :with => arg1)
end

When(/^I fill the field email with "(.*?)"$/) do |arg1|
  fill_in('user[email]', :with => arg1)
end

When(/^I fill the field password with "(.*?)"$/) do |arg1|
  fill_in('user[password]', :with => arg1)
end

When(/^I fill the field confirm_password with "(.*?)"$/) do |arg1|
  fill_in('user[password_confirmation]', :with => arg1)
end

When(/^I push the button Eliminar todos$/) do
  click_button('Delete all')
end

Given(/^I am in page list of students$/) do
  visit '/users/latest'
end

When(/^I push the button Eliminar$/) do
  click_button('Delete')
end


When(/^push the button Lista de alumnos$/) do
  visit '/users/latest'
end

Then(/^I should see all of the students registered in the course$/) do
  page.should have_content('Nombre')
  page.should have_content('Apellido')
  page.should have_content('Email')
end

When(/^I push the button "(.*?)"$/) do |arg1|
  click_button(arg1)
end
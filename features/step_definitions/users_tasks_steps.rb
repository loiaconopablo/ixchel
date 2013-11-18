Given(/^I am a Student$/) do
  visit '/login'
  fill_in('user[email]', :with => 'rsaenz@gmail.com')
  fill_in('user[password]', :with => '1234')
  click_button('Iniciar sesion')
end

Given(/^there is a task "(.*?)"$/) do |arg1|
  #task = Task.create(:title => 'Tarea 1',
 #         :limit_date => Date.new(2013, 11, 01))
  @task = Task.new
  @task.title = 'Tarea 1'
  @task.limit_date = '01-11-2013'
  @task.save
end

When(/^I do not fill any fields$/) do
  visit '/tasks/latest'
  click_button('Registrar tiempos')
  click_button('Aceptar')
end

When(/^I only fill real time$/) do
  visit '/tasks/latest'
  page.all(:link, 'Registrar tiempos')[1].click
  #click_button('Registrar tiempos')
  fill_in('user_task[real_time]', :with => 20)
  click_button('Aceptar')
end

When(/^I only fill estimated time$/) do
  #visit '/tasks/latest'
  click_button('Registrar tiempos')
  fill_in('user_task[estimated_time]', :with => 21)
  click_button('Aceptar')
end

When(/^I fill estimated and real time$/) do
  #visit '/tasks/latest'
  click_button('Registrar tiempos')
  fill_in('user_task[estimated_time]', :with => 21)
  fill_in('user_task[real_time]', :with => 20)
  click_button('Aceptar')
end

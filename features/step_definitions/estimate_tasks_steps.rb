Given(/^I am a student$/) do
  @user = User.new
  @user.email = 'rsaenz@gmail.com'
  @user.name = 'Roberto'
  @user.lastname = 'Saenz'
  @user.password = '1234'
  @user.save

  visit '/login'
  fill_in('user[email]', :with => 'rsaenz@gmail.com')
  fill_in('user[password]', :with => '1234')
  click_button('Iniciar sesion')
  page.should have_content('rsaenz@gmail.com')

end

Given(/^there is a task "(.*?)"$/) do |arg1|
  @task = Task.new
  @task.title = arg1
  @task.limit_date = '01-11-2013'
  @task.save
end

When(/^I do not fill any fields$/) do
  visit '/tasks/latest'
  click_link('Estimar', match: :first)
  click_button('Aceptar')
end

When(/^I only fill real time$/) do
  visit '/tasks/latest'
  click_link('Estimar', match: :first)
  fill_in('user_task[real_time]', :with => 20)
  click_button('Aceptar')
end

When(/^I only fill estimated time$/) do
  visit '/tasks/latest'
  click_link('Estimar', match: :first)
  fill_in('user_task[estimated_time]', :with => 21)
  click_button('Aceptar')
end

When(/^I fill estimated and real time$/) do
  visit '/tasks/latest'
  click_link('Estimar', match: :first)
  fill_in('user_task[estimated_time]', :with => 21)
  fill_in('user_task[real_time]', :with => 20)
  click_button('Aceptar')
end

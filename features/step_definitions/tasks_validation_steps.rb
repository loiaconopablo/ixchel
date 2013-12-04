When(/^I fill estimated time with negative number or letters$/) do
@task2 = Task.get(3)
@task2.update(:limit_date => Date.new(2013, 12, 30))
  visit '/tasks/latest'
  page.all(:link, 'Estimar')[4].click
  fill_in('user_task[estimated_time]', :with => -2)
  click_button('Aceptar')
end

When(/^I fill real time with negative number or letters$/) do
	@task1 = Task.get(6)
	@task1.update(:limit_date => Date.new(2013, 12, 30))
  visit '/tasks/latest'
  page.all(:link, 'Estimar')[5].click
  fill_in('user_task[real_time]', :with => 'hola')
  click_button('Aceptar')
end

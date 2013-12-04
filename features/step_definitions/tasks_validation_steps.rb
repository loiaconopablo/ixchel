When(/^I fill estimated time with negative number or letters$/) do
  visit '/tasks/latest'
  page.all(:link, 'Estimar')[4].click
  fill_in('user_task[estimated_time]', :with => -2)
  click_button('Aceptar')
end

When(/^I fill real time with negative number or letters$/) do
  visit '/tasks/latest'
  page.all(:link, 'Estimar')[5].click
  fill_in('user_task[real_time]', :with => 'hola')
  click_button('Aceptar')
end

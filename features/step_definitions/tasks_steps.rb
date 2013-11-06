When(/^I browse the default page$/) do
  visit '/'
end

Given(/^I am logged in as teacher$/) do
  visit '/login'
  fill_in('user[email]', :with => 'offerer@test.com')
  fill_in('user[password]', :with => 'Passw0rd!')
  click_button('Login')
  page.should have_content('offerer@test.com')
end

Given(/^I access the new task page$/) do
  visit '/tasks/new'
  page.should have_content('Title')
end

When(/^I fill the title with "(.*?)"$/) do |task_title|
  fill_in('task[title]', :with => task_title)
end

When(/^confirm the new task$/) do
  click_button('Create')
end

Then(/^I should see "(.*?)" in My Tasks$/) do |content|
	visit '/tasks/my'
  page.should have_content(content)
end


Then(/^I should not see "(.*?)" in My Tasks$/) do |content|
  visit '/tasks/my'
  page.should_not have_content(content)
end

Given(/^I have "(.*?)" task in My Tasks$/) do |task_title|
  Task.all.destroy
  visit '/tasks/new'
  fill_in('task[title]', :with => task_title)
  click_button('Create')
end

Given(/^I edit it$/) do
  click_link('Edit')
end

And(/^I delete it$/) do
  click_button('Delete')
end

Given(/^I set title to "(.*?)"$/) do |new_title|
  fill_in('task[title]', :with => new_title)
end

Given(/^I save the modification$/) do
  click_button('Save')
end

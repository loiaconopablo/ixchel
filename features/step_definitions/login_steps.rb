When(/^I browse the default page$/) do
  visit '/'
end

Given(/^I am in the login page$/) do
  visit '/login'
end

When(/^I fill the field login email with "(.*?)"$/) do |arg1|
  fill_in('user[email]', :with => arg1)
end

When(/^I fill the field login password with "(.*?)"$/) do |arg1|
  fill_in('user[password]', :with => arg1)
end

When(/^I push the button "(.*?)"$/) do |arg1|
  click_button(arg1)
end



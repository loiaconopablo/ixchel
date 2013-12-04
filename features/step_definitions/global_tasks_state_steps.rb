Given(/^I have a student with name "(.*?)" and last name "(.*?)" that has finished all task$/) do |nombre, apellido|
user2 = User.create(:email => 'user2@tareas.com',
									 :name => nombre, 
									 :lastname => apellido,
									 :is_teacher => false,
									 :password => "1234")

visit '/login'
fill_in('user[email]', :with => 'user2@tareas.com')
fill_in('user[password]', :with => '1234')
click_button('Iniciar sesion')									 

visit '/tasks/latest'
page.all(:link, 'Estimar')[0].click
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')

visit '/tasks/latest'
page.all(:link, 'Estimar')[1].click
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')					 
 			 
end

Given(/^I login with Roberto, user default$/) do
visit '/login'
fill_in('user[email]', :with => 'rsaenz@gmail.com')
fill_in('user[password]', :with => '1234')
click_button('Iniciar sesion')
page.should have_content('rsaenz@gmail.com')
  
end

Then(/^Roberto Complete all task$/) do
@task2 = Task.get(2)
@task2.update(:limit_date => Date.new(2013, 12, 30))

@task1 = Task.get(1)
@task1.update(:limit_date => Date.new(2013, 12, 30))

visit '/tasks/latest'
page.all(:link, 'Estimar')[1].click
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')	

visit '/tasks/latest'
page.all(:link, 'Estimar')[0].click
fill_in('user_task[estimated_time]', :with => 20)
click_button('Aceptar')		

end


When(/^push the button Estado global de tareas$/) do
page.should have_content('Ver Estado Global')
click_link('Ver Estado Global')
end


Then(/^I should see 'Le quedaron tareas sin estimar'$/) do
click_link('Ver Estado Global')
page.should have_content('Le quedaron tareas sin estimar')
end




user = User.create(:email => 'npaez@gmail.com',
									 :name => 'Nicolas', 
									 :lastname => 'Paez',
									 :is_teacher => true,
									 :password => "1234")


user = User.create(:email => 'psuarez@gmail.com',
									 :name => 'Pablo', 
									 :lastname => 'Suarez',
									 :is_teacher => true,
									 :password => "1234")

user = User.create(:email => 'lrrinaudo@gmail.com',
									 :name => 'Leandro', 
									 :lastname => 'Rinaudo',
									 :is_teacher => false,
									 :password => "1234")

user = User.create(:email => 'sponce@gmail.com',
									 :name => 'Saira', 
									 :lastname => 'Ponce',
									 :is_teacher => false,
									 :password => "1234")

user = User.create(:email => 'jlopez@gmail.com',
									 :name => 'Juan', 
									 :lastname => 'Lopez',
									 :is_teacher => false,
									 :password => "1234")

task = Task.create(:title => 'Tarea 1',
					:limit_date => Date.new(2013, 11, 01))

task = Task.create(:title => 'Tarea 2',
					:limit_date => Date.new(2013, 11, 02))

task = Task.create(:title => 'Tarea 3',
					:limit_date => Date.new(2013, 12, 3))

task = Task.create(:title => 'Tarea 4',
					:limit_date => Date.new(2013, 12, 9))

task = Task.create(:title => 'Tarea 5',
					:limit_date => Date.new(2013, 11, 11))

task = Task.create(:title => 'Tarea 6',
					:limit_date => Date.new(2013, 11, 7))
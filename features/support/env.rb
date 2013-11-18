require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

require 'capybara/cucumber'
require 'rspec/expectations'

#require 'simplecov'
require 'simplecov'
SimpleCov.start do
  root(File.join(File.dirname(__FILE__), '..','..'))
  coverage_dir 'reports/coverage'
  add_filter '/spec/'
  add_filter '/features/'
  add_filter '/admin/'
  add_filter '/db/'
  add_filter '/config/'
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_group "Helpers", "app/helpers"
end

DataMapper::Logger.new($stdout, :all)
DataMapper.auto_migrate!         
        
user = User.create(:email => 'npaez@gmail.com',
                   :name => 'Nicolas', 
                   :lastname => 'Paez',
                   :is_teacher => true,
                   :password => "1234")

user = User.create(:email => 'rsaenz@gmail.com',
                   :name => 'Roberto', 
                   :lastname => 'Saenz',
                   :is_teacher => false,
                   :password => "1234")

#task = Task.create(:title => 'Tarea 1',
 #         :limit_date => Date.new(2013, 11, 01))

##
# You can handle all padrino applications using instead:
#   Padrino.application
#Capybara.default_driver = :selenium

Capybara.app = TaskManagement::App.tap { |app|  }

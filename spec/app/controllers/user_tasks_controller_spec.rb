require 'spec_helper'

describe "User_tasksController" do

	describe 'get :new' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/new')
	  	get '/user_tasks/new'
	    last_response.should be_ok
	  end

	end

	describe 'get :latest' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/list')
	  	get '/user_tasks/latest'
	    last_response.should be_ok
	  end
	end

	# describe 'get :tasks' do
		
	#   it "should response ok" do
	#   	TaskManagement::App.any_instance.should_receive(:render).with('users/task_list')
	#   	get '/users/tasks'
	#     last_response.should be_ok
	#   end
	# end 		 	 
	 
end

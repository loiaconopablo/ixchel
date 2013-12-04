require 'spec_helper'

describe "User_tasksController" do

	# describe 'get :new' do
		
	# 	let(:task_id) { 1 }
				
	#   	it "should response ok" do
	#   		TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/new')
	#   		get '/user_tasks/new'
	#     	last_response.should be_ok
	#   	end

	#   	it 'should render user_tasks/new' do
	#   		TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/new')
	#   		get '/user_tasks/new'
	#   	end

	# end

	describe 'get :latest' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/list')
	  	get '/user_tasks/latest'
	    last_response.should be_ok
	  end

	  it 'should render user_tasks/list' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('user_tasks/list')
	  	get '/user_tasks/latest'
	  end

	  
	end	 	 
	 
end

require 'spec_helper'

describe "TasksController" do

	describe 'get :new' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/new')
	  	get '/tasks/new'
	    last_response.should be_ok
	  end

		it 'should render tasks/new' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/new')
	  	get '/tasks/new'
	  end

	 end

	describe 'get :latest' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/list')
	  	get '/tasks/latest'
	    last_response.should be_ok
	  end

	  it 'should render tasks/list' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/list')
	  	get 'tasks/latest'
	  end


	end

	describe 'get :global' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/global_state')
	  	get '/tasks/global'
	    last_response.should be_ok
	  end

	  it 'should render tasks/list' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/global_state')
	  	get 'tasks/global'
	  end


	end

#	describe 'post :create' do

#	end
	 
end
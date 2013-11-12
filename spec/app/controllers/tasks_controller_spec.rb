require 'spec_helper'

describe "TasksController" do

	describe 'get :new' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/new')
	  	get '/tasks/new'
	    last_response.should be_ok
	  end
	end

	describe 'get :latest' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('tasks/list')
	  	get '/tasks/latest'
	    last_response.should be_ok
	  end
	end

#	describe 'post :create' do

#	end
	 
end
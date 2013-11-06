require 'spec_helper'

describe "TasksController" do

	describe 'get :new' do
		
	  it "should response ok and render tasks/new" do
	  	ManagementTask::App.any_instance.should_receive(:render).with('tasks/new')
	  	get '/tasks/new'
	    last_response.should be_ok
	  end

	 end

end

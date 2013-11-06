require 'spec_helper'

describe "UsersController" do

	describe 'get :register' do
		
	  it "should response ok" do
	  	ManagementTask::App.any_instance.should_receive(:render).with('users/new')
	  	get '/register'
	    last_response.should be_ok
	  end

	  it 'should render users/new' do
	  	ManagementTask::App.any_instance.should_receive(:render).with('users/new')
	  	get '/register'
	  end

	 end
	 
end

require 'spec_helper'

describe "UsersController" do

	describe 'get :register' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('users/new')
	  	get '/register'
	    last_response.should be_ok
	  end

	  it 'should render users/new' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('users/new')
	  	get '/register'
	  end

	 end

	describe 'get :latest' do
		
	  it "should response ok" do
	  	TaskManagement::App.any_instance.should_receive(:render).with('users/list')
	  	get '/users/latest'
	    last_response.should be_ok
	  end

	  it 'should render users/new' do
	  	TaskManagement::App.any_instance.should_receive(:render).with('users/list')
	  	get '/users/latest'
	  end


	end

	
	 
end

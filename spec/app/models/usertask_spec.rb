require 'spec_helper'

describe UserTask do

	describe 'model' do

		subject { @task = UserTask.new }

		it { should respond_to( :id) }
		it { should respond_to( :user) }
		it { should respond_to( :task) }
		it { should respond_to( :estimated_time) }
		it { should respond_to( :real_time ) }
	end

	describe 'All sets' do

		before do
		 	@user_task = UserTask.new
		 	@user_task.user_id= 1
		 	@user_task.task_id = 1
		 	@user_task.estimated_time = 30
		 	@user_task.real_time = 35
		end

		it 'should return user_id = 1' do
			@user_task.user_id.should eq 1
		end

		it 'should return task_id = 1' do
			@user_task.task_id.should eq 1
		end	

		it 'should return estimated time = 30' do
			@user_task.estimated_time.should eq 30
		end

		it 'should return real_time = 35' do
			@user_task.real_time.should eq 35
		end

	end


end


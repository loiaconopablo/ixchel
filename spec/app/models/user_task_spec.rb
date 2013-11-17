require 'spec_helper'

describe User_Task do

	describe 'model' do

		subject { @task = User_Task.new }

		it { should respond_to( :id) }
		it { should respond_to( :id_user) }
		it { should respond_to( :id_task) }
		it { should respond_to( :title ) }
		it { should respond_to( :estimated_time) }
		it { should respond_to( :real_time ) }
		it { should respond_to( :limit_date ) }
	end

	describe 'All sets' do

		before do
		 	@user_task = User_Task.new
		 	@user_task.id_user = 1
		 	@user_task.id_task = 1
		 	@user_task.title = 'Tarea 1'
		 	@user_task.estimated_time = 30
		 	@user_task.real_time = 35
		 	@user_task.limit_date = '2011-12-13'
		end

		it 'should return id_user = 1' do
			@user_task.id_user.should eq 1
		end

		it 'should return id_task = 1' do
			@user_task.id_task.should eq 1
		end	

		it 'should return title = Tarea 1' do
			@user_task.title.should eq 'Tarea 1'
		end

		it 'should return estimated time = 30' do
			@user_task.estimated_time.should eq 30
		end

		it 'should return real_time = 35' do
			@user_task.real_time.should eq 35
		end

		it 'should return limit_date = 2011-12-13' do
			@user_task.limit_date.day.should be 13
			@user_task.limit_date.month.should be 12
			@user_task.limit_date.year.should be 2011
		end

	end


end


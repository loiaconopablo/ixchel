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

	# describe 'All sets' do

	# 	before do
	# 	 	@task = Task.new
	# 	 	@task.title = 'Tarea 1'
	# 	 	@task.estimated_time = 30
	# 	 	@task.real_time = 35
	# 	 	@task.limit_date = '2011-12-13'
	# 	end

	# 	it 'should return title = Tarea 1' do
	# 		@task.title.should eq 'Tarea 1'
	# 	end

	# 	it 'should return estimated time = 30' do
	# 		@task.estimated_time.should eq 30
	# 	end

	# 	it 'should return real_time = 35' do
	# 		@task.real_time.should eq 35
	# 	end

	# 	it 'should return limit_date = 2011-12-13' do
	# 		@task.limit_date.day.should be 13
	# 		@task.limit_date.month.should be 12
	# 		@task.limit_date.year.should be 2011
	# 	end

	# end


end


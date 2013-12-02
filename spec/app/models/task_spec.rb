require 'spec_helper'

describe Task do

	describe 'model' do

		subject { @task = Task.new }

		it { should respond_to( :id) }
		it { should respond_to( :title ) }
		it { should respond_to( :limit_date ) }
	end

	describe 'All sets' do

		before do
		 	@task = Task.new
		 	@task.title = 'Tarea 1'
		 	@task.limit_date = '2011-12-13'
		end

		it 'should return title = Tarea 1' do
			@task.title.should eq 'Tarea 1'
		end

		it 'should return limit_date = 2011-12-13' do
			@task.limit_date.day.should be 13
			@task.limit_date.month.should be 12
			@task.limit_date.year.should be 2011
		end

	end


end


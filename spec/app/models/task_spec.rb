require 'spec_helper'

describe Task do

	describe 'model' do

		subject { @task = Task.new }

		it { should respond_to( :id) }
		it { should respond_to( :title ) }
		it { should respond_to( :estimated_time) }
		it { should respond_to( :real_time ) }
	it { should respond_to( :limit_date ) }
	end

	describe 'set_title' do

	  let(:task) { Task.new }

	  it '' do
	  end

	end


end


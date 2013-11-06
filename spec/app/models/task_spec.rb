require 'spec_helper'

describe Task do

	describe 'model' do

		subject { @task = Task.new }

		it { should respond_to( :id) }
		it { should respond_to( :title ) }
		it { should respond_to( :location) }
		it { should respond_to( :description ) }
		it { should respond_to( :owner ) }
		it { should respond_to( :owner= ) }

	end

	describe 'valid?' do

	  let(:task) { Task.new }

	  it 'should be false when title is blank' do
	  	puts task.owner
	  	task.valid?.should be_false
	  end

	end

end

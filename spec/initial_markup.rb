require_relative 'spec_helper'

describe Job do
	describe 'have base price of 1299.99, 3 people, and food' do
		before :each do 
			@job = Job.new(1299.99, 3, 'food')
		end

		it 'should have an initial markup price of $1364.99' do 
			expect(@job.initial_markup).to eq(1364.99)
		end
	end
end

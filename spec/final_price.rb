require_relative 'spec_helper'

describe Job do
	describe 'have base price of 1299.99, 3 people, and food' do
		before :each do 
			@job = Job.new(1299.99, 3, 'food')
		end

		it 'should have a final price of $1591.58' do 
			expect(@job.final_price).to eq(1591.58)
		end
	end

	describe 'have base price of $5432, 1 person, and drugs' do
		before :each do
			@job = Job.new(5432, 1, 'drugs')
		end

		it 'should have a final price of $6199.81' do
			expect(@job.final_price).to eq(6199.81)
		end
	end

	describe 'have base price of $12,456.95, 4 people, and books' do
		before :each do
			@job = Job.new(12456.95, 4, 'books')
		end

		it 'should have a final price of $13,707.63' do
			expect(@job.final_price).to eq(13707.63)
		end
	end
end


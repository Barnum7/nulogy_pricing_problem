require_relative 'spec_helper'

describe Job do
	describe 'have base price of 1299.99, 3 people, and food' do
		before :each do 
			@job = Job.new(1299.99, 3, 'food')
		end

		it 'should have base price of 1299.99' do
			expect(@job.base_price).to eq(1299.99)
		end

		it 'should have 3 people' do
			expect(@job.people).to eq(3)
		end

		it 'should have food' do
			expect(@job.materials).to eq('food')
		end
	end

	describe 'have base price of 5432, 1 person, and drugs' do
		before :each do 
			@job = Job.new(5432, 1, 'drugs')
		end

		it 'should have base price of 5432' do
			expect(@job.base_price).to eq(5432)
		end

		it 'should have 1 person' do
			expect(@job.people).to eq(1)
		end

		it 'should have drugs' do
			expect(@job.materials).to eq('drugs')
		end
	end
	
	describe 'have base price of 12456.95, 4 people, and books' do
		before :each do 
			@job = Job.new(12456.95, 4, 'books')
		end

		it 'should have base price of 12456.95' do
			expect(@job.base_price).to eq(12456.95)
		end

		it 'should have 4 people' do
			expect(@job.people).to eq(4)
		end

		it 'should have books' do
			expect(@job.materials).to eq('books')
		end
	end
end


		
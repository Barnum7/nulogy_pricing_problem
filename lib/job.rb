class Job
	attr_reader :base_price, :people, :materials
	def initialize(base_price, people, materials)
		@base_price = base_price
		@people = people
		@materials = materials
	end

	public

	def final_price

		initial_markup = @base_price * 1.05

		people_markup = @people * 0.012

		case material = @materials
		when 'drugs'
			materials_markup = 0.075
		when 'food'
			materials_markup = 0.13
		when 'electronics'
			materials_markup = 0.02
		else 
			materials_markup = 0
		end

		additional_markup = people_markup + materials_markup + 1
		final_price = initial_markup * additional_markup

		puts final_price.round(2)
	end

	job = Job.new(1299.99, 3,'food')
	job2 = Job.new(5432.00, 1, 'drugs')
	job3 = Job.new(12456.95, 4, 'books')

	job.final_price
	job2.final_price
	job3.final_price

end
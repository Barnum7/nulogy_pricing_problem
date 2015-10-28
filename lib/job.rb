class Job
	attr_reader :base_price, :people, :materials
	def initialize(base_price, people, materials)
		@base_price = base_price
		@people = people
		@materials = materials
	end

	public

	def initial_markup
		initial_markup = @base_price * 1.05
		puts initial_markup
	end

	def people_markup
		people_markup = @people * 0.012
		puts people_markup
	end

	def materials_markup
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

		puts materials_markup
	end

	def final_price
		additional_markup = people_markup + materials_markup + 1
		final_price = initial_markup * additional_markup

		puts final_price
	end

	job = Job.new(1299.99,3,'food')

	job.final_price

end
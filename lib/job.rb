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

		return final_price.round(2)
	end

	puts "How much is your products base price?"
	base_price = gets.chomp
	puts "How many people are on the team?"
	people = gets.chomp
	puts "What materials are being handled?"
	materials = gets.chomp

	job = Job.new(base_price.to_i, people.to_i, materials)

	final = job.final_price

	puts "The final price for this is #{final}. Pleasure doing business with you!"

end
class Job
	attr_reader :base_price, :people, :materials
	def initialize(base_price, people, materials)
		@base_price = base_price
		@people = people
		@materials = materials
	end

	public

	def initial_markup
		starting_price = @base_price * 1.05
		puts starting_price
	end

	job = Job.new(10,1,'bats')

	job.initial_markup 

end
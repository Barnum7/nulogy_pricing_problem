class Job
	attr_reader :base_price, :people, :materials
	def initialize(base_price, people, materials)
		@base_price = base_price
		@people = people
		@materials = materials
	end
end
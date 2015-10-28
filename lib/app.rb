require_relative 'job'

puts "How much is your products base price?"
base_price = gets.chomp
puts "How many people are on the team?"
people = gets.chomp
puts "What materials are being handled?"
materials = gets.chomp

job = Job.new(base_price.to_i, people.to_i, materials)

puts "The final price for this is #@job.final_price. Pleasure doing
business with you!"
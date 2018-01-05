class Dice

attr_reader :roll_value, :roll_array
attr_accessor :sides, :number

	def initialize(sides)
		@sides = sides
		@roll_array = []
		@roll_value = roll_value
	end
	
	def roll(number=1)
		number.times do
			@roll_value = rand(@sides.to_i) + 1
			puts "\nYou rolled a #{@roll_value}!"
			@roll_array << @roll_value
		end
	end
	
end

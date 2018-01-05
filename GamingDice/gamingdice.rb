#d4 d6 d8 d10 d12 d20 tens10
#roll random numbers for each of these dice
#allow users to select which die/dice they want to roll
#save results in a hash, including type of die and value rolled, and export results to a file

require_relative 'dice'
require_relative 'dieroll'
require_relative 'rpg'


puts "Would you like to roll a die? (Y/N)"	
loop do
	input = gets.chomp.downcase
	case input
		when "y"
			puts "How many sides should your die have? D4, D6, D8, D10, or D12"
			sides = gets.chomp
			puts "Okay, how many times should we roll your #{sides} die? (please enter a number)"
			number = gets.chomp.to_i
			puts "Okay, we're going to roll your #{sides} die #{number} times."
			die = Dice.new(sides)
			die.roll(number)
			puts "You rolled the following values: \n#{@roll_array}"	
			puts "Would you like to roll another die? (Y/N)"
		when "n", "exit", "quit"
			puts "Okey doke. Have a good day!"
			break
		else puts "I don't understand. Do you want to roll a die? Please enter Y or N."
	end
end	


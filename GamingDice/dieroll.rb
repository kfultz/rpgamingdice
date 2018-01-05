require_relative 'gamingdice'
require_relative 'dice'
require_relative 'rpg'


module DieRoll

	def self.dieroll
		puts "Which type of die should we roll first? D4, D6, D8, D10, or D12"
		sides = gets.capitalize.chomp
		puts "Okay, how many times should we roll your #{sides} die? (please enter a number)"
		number = gets.chomp.to_i
		puts "Okay, we're going to roll your #{sides} die #{number} times."
		die = Dice.new(sides)
		die.roll(number)
		puts "You rolled the following values: \n#{@roll_array}"		
	end
end

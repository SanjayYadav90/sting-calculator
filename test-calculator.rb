# test_add.rb
require_relative 'calculator'

# Manual test cases
puts "# Test StringCalculator"
  puts "  # for successful scenarios"

  puts "     it should return 0"
		puts "      When no input given:  #{Calculator.add("") == 0  ? 'PASSED' : 'FAILED'}"
	
  puts "    it should return 4"
		puts "      When two numbers given: #{Calculator.add("1,3") == 4  ? 'PASSED' : 'FAILED'}"
  
  puts "# for unsuccessful scenarios"
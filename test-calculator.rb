# Test calculator
require_relative 'calculator'

# Manual test cases
puts "# Test StringCalculator"
  puts "  # for successful scenarios"
    # empty space are used to increase readability.
    puts "     it should return 0"
  		puts "      When empty input given:  #{Calculator.add("") == 0  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return same number"
      puts "      When a single number given:  #{Calculator.add("1") == 1  ? 'PASSED' : 'FAILED'}\n\n"
  	
    puts "     it should return 5"
  		puts "      When two numbers given: #{Calculator.add("2,3") == 5  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return 6"
      puts "      When new line tag present in input string: #{Calculator.add("1\n2,3") == 6  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return 3"
      puts "      When special chars present in input string: #{Calculator.add("//;\n1;2") == 3  ? 'PASSED' : 'FAILED'}\n\n\n"
  
  puts "  # for unsuccessful scenarios"
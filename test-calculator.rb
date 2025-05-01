# Test calculator
require_relative 'calculator'

# Manual test cases
puts "# Test StringCalculator"
  puts "  # With successful scenarios"
    # empty space are used to increase readability.
    puts "     it should return 0"
  		puts "      When empty input given:  #{Calculator.new.add("") == 0  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return same number"
      puts "      When a single number given:  #{Calculator.new.add("1") == 1  ? 'PASSED' : 'FAILED'}\n\n"
  	
    puts "     it should return 5"
  		puts "      When two numbers given: #{Calculator.new.add("2,3") == 5  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return 6"
      puts "      When new line tag present in input string: #{Calculator.new.add("1\n2,3") == 6  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should return 3"
      puts "      When special chars present in input string: #{Calculator.new.add("//;\n1;2") == 3  ? 'PASSED' : 'FAILED'}\n\n\n"
  
  # Test posible way when calculator do not work 
  puts "  # With unsuccessful scenarios"

    puts "     it should show error"
      puts "      When input string contains hyphen only:  #{Calculator.new.add("-") == "String must have atleast one number"  ? 'PASSED' : 'FAILED'}\n\n"
    
    puts "     it should show error"
      puts "      When input string have only Symbols:  #{Calculator.new.add("@-!/$*") == "String must have atleast one number"  ? 'PASSED' : 'FAILED'}\n\n\n"
    

    puts "     it should show validation message"
      puts "      When only negative numbers present:  #{Calculator.new.add("-1")[:message] == "negative numbers not allowed: -1"  ? 'PASSED' : 'FAILED'}\n\n"
    
    puts "     it should show validation message"
      puts "      When multiple negative numbers present:  #{Calculator.new.add("-5,-3-7")[:message] == "negative numbers not allowed: -5, -3, -7"  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should show validation message"
      puts "      When input string contains negative and positive numbers:  #{Calculator.new.add("-5,2,3")[:message] == "negative numbers not allowed: -5"  ? 'PASSED' : 'FAILED'}\n\n"

    puts "     it should show validation message"
      puts "      When negative numbers present with special chars:  #{Calculator.new.add("//:-2\nt")[:message] == "negative numbers not allowed: -2"  ? 'PASSED' : 'FAILED'}\n\n"

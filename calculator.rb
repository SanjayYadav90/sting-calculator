# This is Calculator class to do simple addition

class Calculator
	def add(input_str)
		return 0 if input_str.empty?
		return 'String must have atleast one number' if input_str !~ /\d/
		result = []
		list = refined_string(input_str)
		negative_nums, positive_nums = list.partition { |n| n < 0 }
		negative_nums.length == 0 ? positive_nums.inject(:+) : validate_items(negative_nums) #if negative_nums.length < 0
	end

	private

	def refined_string(str)
		refined_arr = str.scan(/-?\d+(?:\.\d+)?/)
		refined_arr.map(&:to_i)
	end

	def validate_items(list)
		{
			message: "negative numbers not allowed: #{ list.join(', ') }"
		}
	end
end


# To execute from terminal
if __FILE__ == $0
  method = ARGV[0]
  argument = ARGV[1]

  if Calculator.new.respond_to?(method)
    puts Calculator.new.send(method, *argument)
  else
    puts "something went wrong!"
  end
end
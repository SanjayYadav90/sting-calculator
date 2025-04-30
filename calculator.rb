# This is Calculator class to do simple addition

class Calculator
	def self.add(input_str)
		return "Input should be string." if !input_str.is_a?(String)
		return 0 if input_str.empty?
		result = []
		refined_arr = input_str.scan(/-?\d+(?:\.\d+)?/)
		#puts refined_arr
		list = refined_arr.map(&:to_i)
		negatives_list = list.select { |n| n < 0 }
		"negative numbers not allowed #{negatives_list.join(', ')}" if negatives_list.length > 0
		positive_list = list.select { |n| n > 0 }
		#puts positive_list
		positive_list.inject(:+)
	end
end



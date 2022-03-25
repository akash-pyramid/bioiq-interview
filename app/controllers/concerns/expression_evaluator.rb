module ExpressionEvaluator

	def get_evaluation(exp)
		operands = []
		operations = []
	
		i = 0
		raise "Invalid input" if ["*", "/"].include?(exp[0])
		exp.insert(0, '0') if ["+", "-"].include?(exp[0])
		while i < exp.length
			c = exp[i]
			if c.to_i.to_s == c  # check if it is number
				num = 0
				while( c.to_i.to_s == c ) do
					num = num * 10  + c.to_i
					i += 1
					if i < exp.length
						c = exp[i]
					else
						break
					end
				end
				i -= 1
				operands.push(num)
			elsif c == '('
				operations.push(c)
			elsif c == ')'
				while( operations.last != '(' ) do
					output = perform_operation(operands, operations)
					operands.push(output)
				end
				operations.pop()
			elsif(is_operator(c))
				while(operations.size.positive? && precedence(c) <= precedence(operations.last) ) do
					output = perform_operation(operands, operations)
					operands.push(output)
				end
				operations.push(c)
			end
			i += 1
		end
	
		while(operations.size.positive?) do
			output = perform_operation(operands, operations)
			operands.push(output)
		end
		operands.pop()
	
	end
	
	
	def precedence(c)
		case c
		when '+'
			return 1
		when '-'
			return 1
		when '*', '/'
			return 2
		else
			return -1
		end
	end
	
	def perform_operation(operands, operations)
		a = operands.pop()
		b = operands.pop()
		operation = operations.pop()
	
		case operation
		when '+'
			return a + b
		when '-'
			return b - a
		when '*'
			return a * b
		when '/'
			if a == 0
				p "Cannot divide by 0"
				return 0
			end
			return b / a
		else
			return 0
		end
	end
	
	def is_operator(c)
		c == '+' || c == '-' || c == '/' || c == '*'
	end

end

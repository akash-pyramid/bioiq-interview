class CalculatorController < ApplicationController
	include ExpressionEvaluator

	def index
	end

	def evaluate_expression
		@result = get_evaluation(params[:input_value])
	end
end

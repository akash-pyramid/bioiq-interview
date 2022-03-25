class CalculatorController < ApplicationController
	include ExpressionEvaluator

	def index
	end

	def evaluate_expression
		if Shared.is_number_and_operator?(params[:input_value])
			@success = get_evaluation(params[:input_value])
		else
			@error = "Please input numeric and operators only"
		end
		respond_to do |format|
			format.js
		end
	end
end

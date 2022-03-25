class CalculatorController < ApplicationController
  include ExpressionEvaluator

  def index
  end

  def evaluate_expression
    begin
      @input_value = Shared.is_number_and_operator?(params[:input_value])
      @success = get_evaluation(@input_value)
    rescue StandardError => e
      @error = e
    end
    respond_to do |format|
      format.js
    end
  end
end

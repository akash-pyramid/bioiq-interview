class ConversionController < ApplicationController

	def index
	end

	def convert_to_words
		input_value = params[:input_value].to_i
		@result = NumberToWordConverter.new.in_words(input_value)
	end
end

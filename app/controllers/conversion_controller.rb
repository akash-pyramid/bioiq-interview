class ConversionController < ApplicationController

	def index
	end

	def convert_to_words
		input_value = params[:input_value].to_i
		number_to_word_obj = NumberToWordConverter.new
		@result = number_to_word_obj.in_words(input_value)
	end
end

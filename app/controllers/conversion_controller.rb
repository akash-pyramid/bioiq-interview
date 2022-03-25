class ConversionController < ApplicationController

	def index
	end

	def convert_to_words
		if Shared.is_only_number?(params[:input_value])
			input_value = params[:input_value].to_i
			@success = NumberToWordConverter.new.in_words(input_value)
		else
			@error = "Please input numeric only"
		end
		respond_to do |format|
			format.js
		end
	end
end

class ConversionController < ApplicationController

  def index
  end

  def convert_to_words
    begin
      input_value = Shared.is_only_number?(params[:input_value]).to_i
      @success = NumberToWordConverter.new.in_words(input_value)
    rescue StandardError => e
      @error = e
    end
    respond_to do |format|
      format.js
    end
  end
end

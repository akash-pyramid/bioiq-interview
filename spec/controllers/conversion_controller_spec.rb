require 'rails_helper'

describe ConversionController do
	
	describe "GET #index" do
		context "should show conversion page" do
			it "should route index action" do
				expect(get: '/conversion').to route_to(controller: 'conversion', action: 'index')
			end
		end
	end

	describe "POST #convert_to_words" do
		it "should have correct o/p" do
			post :convert_to_words, xhr: true, params: {input_value: "67189"}
			expect(assigns(:success)).to eq("sixty seven thousand one hundred eighty nine")
		end

		it "should have incorrect o/p" do
			post :convert_to_words, xhr: true, params: {input_value: "67189"}
			expect(assigns(:success)).to_not eq("sixty two seven thousand one hundred eighty nine")
		end

		it "should validate input is numeric only" do
			post :convert_to_words, xhr: true, params: {input_value: "ab+1212+2*7+8"}
			expect { raise "Invalid input" }.to raise_error(RuntimeError)
		end
	end

end

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
    it "should route to convert_to_words action" do
      post :convert_to_words, params: {input_value: "67189"}
      expect(assigns(:result)).to eq("sixty seven thousand one hundred eighty nine")
    end
  end
end
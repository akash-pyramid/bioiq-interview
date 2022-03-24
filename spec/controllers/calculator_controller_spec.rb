require 'rails_helper'

describe CalculatorController do
  
  describe "GET #index" do
    context "should show calculator page" do
      it "should route to index action" do
        expect(get: '/calculator').to route_to(controller: 'calculator', action: 'index')
        # get :calculator
      end
    end
  end

  describe "POST #evaluate_expression" do
    it "should route to evaluate_expression action" do
      post :evaluate_expression, params: {input_value: "5*7+8"}
      expect(assigns(:result)).to eq(43)
    end
  end
end

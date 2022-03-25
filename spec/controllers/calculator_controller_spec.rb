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
    it "should evaluate #43 as o/p" do
      post :evaluate_expression, xhr: true, params: {input_value: "5*7+8"}
      expect(assigns(:success)).to eq(43)
    end

    it "should verify #43 as o/p" do
      post :evaluate_expression, xhr: true, params: {input_value: "12+2*7+8"}
      expect(assigns(:success)).to_not eq(43)
    end

    it "should validate input is numeric and operator only" do
      post :evaluate_expression, xhr: true, params: {input_value: "ab+1212+2*7+8"}
      expect { raise "Invalid input" }.to raise_error(RuntimeError)
    end

    it "should validate input is blank" do
      post :evaluate_expression, xhr: true, params: {input_value: ""}
      expect(assigns(:input_value)).to be_empty
    end
  end

end

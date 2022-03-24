require 'rails_helper'

describe HomeController do
  
  describe "GET #index" do
    context "should show home page" do
      it "should route to index action" do
        expect(get: '/').to route_to(controller: 'home', action: 'index')
      end
    end
  end
end

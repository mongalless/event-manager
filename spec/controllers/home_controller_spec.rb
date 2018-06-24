require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "redirect on unauthorized request" do
      get :index
      expect(response).to have_http_status(:redirect)
    end
  end

end

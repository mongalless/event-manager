require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /events" do
    it "if unauthorized, returns a redirect response" do
      get events_path
      expect(response).to have_http_status(:redirect)
    end
  end
end

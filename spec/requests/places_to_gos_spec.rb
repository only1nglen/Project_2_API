require 'rails_helper'

RSpec.describe "PlacesToGos", type: :request do
  describe "GET /places_to_gos" do
    it "works! (now write some real specs)" do
      get places_to_gos_path
      expect(response).to have_http_status(200)
    end
  end
end

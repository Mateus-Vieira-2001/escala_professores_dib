require 'rails_helper'

RSpec.describe "LeadersRegistrations", type: :request do
  describe "GET /leaders_registrations" do
    it "works! (now write some real specs)" do
      get leaders_registrations_path
      expect(response).to have_http_status(200)
    end
  end
end

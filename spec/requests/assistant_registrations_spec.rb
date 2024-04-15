require 'rails_helper'

RSpec.describe "AssistantRegistrations", type: :request do
  describe "GET /assistant_registrations" do
    it "works! (now write some real specs)" do
      get assistant_registrations_path
      expect(response).to have_http_status(200)
    end
  end
end

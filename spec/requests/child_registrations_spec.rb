require 'rails_helper'

RSpec.describe "ChildRegistrations", type: :request do
  describe "GET /child_registrations" do
    it "works! (now write some real specs)" do
      get child_registrations_path
      expect(response).to have_http_status(200)
    end
  end
end

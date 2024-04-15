require "rails_helper"

RSpec.describe LeadersRegistrationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/leaders_registrations").to route_to("leaders_registrations#index")
    end

    it "routes to #new" do
      expect(:get => "/leaders_registrations/new").to route_to("leaders_registrations#new")
    end

    it "routes to #show" do
      expect(:get => "/leaders_registrations/1").to route_to("leaders_registrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/leaders_registrations/1/edit").to route_to("leaders_registrations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/leaders_registrations").to route_to("leaders_registrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/leaders_registrations/1").to route_to("leaders_registrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/leaders_registrations/1").to route_to("leaders_registrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/leaders_registrations/1").to route_to("leaders_registrations#destroy", :id => "1")
    end
  end
end

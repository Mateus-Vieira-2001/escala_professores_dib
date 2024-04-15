require "rails_helper"

RSpec.describe AssistantRegistrationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/assistant_registrations").to route_to("assistant_registrations#index")
    end

    it "routes to #new" do
      expect(:get => "/assistant_registrations/new").to route_to("assistant_registrations#new")
    end

    it "routes to #show" do
      expect(:get => "/assistant_registrations/1").to route_to("assistant_registrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/assistant_registrations/1/edit").to route_to("assistant_registrations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/assistant_registrations").to route_to("assistant_registrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/assistant_registrations/1").to route_to("assistant_registrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/assistant_registrations/1").to route_to("assistant_registrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/assistant_registrations/1").to route_to("assistant_registrations#destroy", :id => "1")
    end
  end
end

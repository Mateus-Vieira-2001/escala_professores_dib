require "rails_helper"

RSpec.describe ChildRegistrationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/child_registrations").to route_to("child_registrations#index")
    end

    it "routes to #new" do
      expect(:get => "/child_registrations/new").to route_to("child_registrations#new")
    end

    it "routes to #show" do
      expect(:get => "/child_registrations/1").to route_to("child_registrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/child_registrations/1/edit").to route_to("child_registrations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/child_registrations").to route_to("child_registrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/child_registrations/1").to route_to("child_registrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/child_registrations/1").to route_to("child_registrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/child_registrations/1").to route_to("child_registrations#destroy", :id => "1")
    end
  end
end

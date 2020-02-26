require "rails_helper"

RSpec.describe PlacesToGosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/places_to_gos").to route_to("places_to_gos#index")
    end


    it "routes to #show" do
      expect(:get => "/places_to_gos/1").to route_to("places_to_gos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/places_to_gos").to route_to("places_to_gos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/places_to_gos/1").to route_to("places_to_gos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/places_to_gos/1").to route_to("places_to_gos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/places_to_gos/1").to route_to("places_to_gos#destroy", :id => "1")
    end

  end
end

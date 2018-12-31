require "rails_helper"

RSpec.describe SpecialsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/specials").to route_to("specials#index")
    end


    it "routes to #show" do
      expect(:get => "/specials/1").to route_to("specials#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/specials").to route_to("specials#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/specials/1").to route_to("specials#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/specials/1").to route_to("specials#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/specials/1").to route_to("specials#destroy", :id => "1")
    end

  end
end

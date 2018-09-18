require "rails_helper"

RSpec.describe AestheticsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aesthetics").to route_to("aesthetics#index")
    end

    it "routes to #new" do
      expect(:get => "/aesthetics/new").to route_to("aesthetics#new")
    end

    it "routes to #show" do
      expect(:get => "/aesthetics/1").to route_to("aesthetics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aesthetics/1/edit").to route_to("aesthetics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aesthetics").to route_to("aesthetics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aesthetics/1").to route_to("aesthetics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aesthetics/1").to route_to("aesthetics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aesthetics/1").to route_to("aesthetics#destroy", :id => "1")
    end

  end
end

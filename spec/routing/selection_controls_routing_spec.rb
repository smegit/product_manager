require "rails_helper"

RSpec.describe SelectionControlsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/selection_controls").to route_to("selection_controls#index")
    end

    it "routes to #new" do
      expect(:get => "/selection_controls/new").to route_to("selection_controls#new")
    end

    it "routes to #show" do
      expect(:get => "/selection_controls/1").to route_to("selection_controls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/selection_controls/1/edit").to route_to("selection_controls#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/selection_controls").to route_to("selection_controls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/selection_controls/1").to route_to("selection_controls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/selection_controls/1").to route_to("selection_controls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/selection_controls/1").to route_to("selection_controls#destroy", :id => "1")
    end
  end
end

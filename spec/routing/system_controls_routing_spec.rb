require "rails_helper"

RSpec.describe SystemControlsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/system_controls").to route_to("system_controls#index")
    end

    it "routes to #new" do
      expect(:get => "/system_controls/new").to route_to("system_controls#new")
    end

    it "routes to #show" do
      expect(:get => "/system_controls/1").to route_to("system_controls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/system_controls/1/edit").to route_to("system_controls#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/system_controls").to route_to("system_controls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/system_controls/1").to route_to("system_controls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/system_controls/1").to route_to("system_controls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/system_controls/1").to route_to("system_controls#destroy", :id => "1")
    end

  end
end

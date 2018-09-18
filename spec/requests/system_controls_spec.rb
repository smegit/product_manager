require 'rails_helper'

RSpec.describe "SystemControls", type: :request do
  describe "GET /system_controls" do
    it "works! (now write some real specs)" do
      get system_controls_path
      expect(response).to have_http_status(200)
    end
  end
end

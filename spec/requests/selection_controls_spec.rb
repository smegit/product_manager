require 'rails_helper'

RSpec.describe "SelectionControls", type: :request do
  describe "GET /selection_controls" do
    it "works! (now write some real specs)" do
      get selection_controls_path
      expect(response).to have_http_status(200)
    end
  end
end

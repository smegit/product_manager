require 'rails_helper'

RSpec.describe "Aesthetics", type: :request do
  describe "GET /aesthetics" do
    it "works! (now write some real specs)" do
      get aesthetics_path
      expect(response).to have_http_status(200)
    end
  end
end

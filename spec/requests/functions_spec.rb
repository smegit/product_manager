require 'rails_helper'

RSpec.describe "Functions", type: :request do
  describe "GET /functions" do
    it "works! (now write some real specs)" do
      get functions_path
      expect(response).to have_http_status(200)
    end
  end
end

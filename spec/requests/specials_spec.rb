require 'rails_helper'

RSpec.describe "Specials", type: :request do
  describe "GET /specials" do
    it "works! (now write some real specs)" do
      get specials_path
      expect(response).to have_http_status(200)
    end
  end
end

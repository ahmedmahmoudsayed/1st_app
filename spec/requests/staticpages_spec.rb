require 'rails_helper'

RSpec.describe "Staticpages", :type => :request do
  describe "GET /staticpages" do
    it "works! (now write some real specs)" do
      get staticpages_path
      expect(response.status).to be(200)
    end
  end
end

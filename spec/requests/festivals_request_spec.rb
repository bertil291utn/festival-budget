require 'rails_helper'

RSpec.describe "Festivals", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/festivals/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/festivals/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/festivals/create"
      expect(response).to have_http_status(:success)
    end
  end

end

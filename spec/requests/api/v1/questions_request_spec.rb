require 'rails_helper'

RSpec.describe "Api::V1::Questions", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/questions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/questions/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/questions/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end

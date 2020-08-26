require 'rails_helper'

RSpec.describe GenresController, type: :controller do
  # describe "GET /index" do
  #   it "renders a successful response" do
  #     p genres_url
  #     get genres_url
  #     expect(response).to be_successful
  #   end
  # end
  context "GET GenresController" do
    it "responds successfully" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end

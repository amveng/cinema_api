# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FilmsController, type: :controller do
  context 'responds' do
    it '#index successfully' do
      get :index
      expect(response.status).to eq(200)
    end

    it '#show successfully' do
      get :show, params: { id: Film.first.id }
      expect(response.status).to eq(200)
      # expect(response).to have_http_status(:ok)
    end

    it '#index to format json' do
      get :index
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end
  end
end

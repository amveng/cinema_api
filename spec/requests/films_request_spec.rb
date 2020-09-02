# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FilmsController, type: :controller do
  context 'responds' do
    it '#index successfully' do
      get :index
      expect(response.status).to eq(200)
    end

    it '#show successfully' do
      Film.create(title: 'фильм')
      get :show, params: { id: Film.first.id }
      expect(response.status).to eq(200)
    end

    it '#index to format json' do
      get :index
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end
  end
  context 'pagination' do
    it 'check for all parametrs' do
      get :index, params: { page: 2, per_page: 1 }
      expect(response.body).to include('current_page', 'previous_page')
    end
  end
end

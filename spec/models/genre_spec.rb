# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Genre, type: :model do
  context 'validations tests' do
    it 'ensures the name is present' do
      genre = Genre.new
      expect(genre.valid?).to eq(false)
    end

    it 'should be able to save genre' do
      genre = Genre.new(name: 'name')
      expect(genre.save).to eq(true)
    end

    it 'ensures the name is unique' do
      Genre.create(name: 'name1')
      genre = Genre.new(name: 'name1')
      expect(genre.save).to eq(false)
    end
  end
end

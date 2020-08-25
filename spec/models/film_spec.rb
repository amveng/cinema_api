require 'rails_helper'

RSpec.describe Film, type: :model do
  context 'validations tests' do
    it 'ensures the title is present' do
      film = Film.new
      expect(film.valid?).to eq(false)
    end

    it 'should be able to save film' do
      film = Film.new(title: 'фильм')
      expect(film.save).to eq(true)
    end
  end
end

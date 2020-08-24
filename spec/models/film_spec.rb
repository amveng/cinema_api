require 'rails_helper'

RSpec.describe Film, type: :model do
  it 'создаем фильм и ищем в базе по названию фильма' do
    Film.create(title: 'фильм')
    film = Film.where(title: 'фильм')
    expect(film.count).to eq 1
    expect(film[0].title).to eq 'фильм'
  end
end

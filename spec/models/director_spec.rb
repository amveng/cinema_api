require 'rails_helper'

RSpec.describe Director, type: :model do
  context 'validations tests' do
    it 'ensures the name is present' do
      director = Director.new
      expect(director.valid?).to eq(false)
    end

    it 'should be able to save director' do
      director = Director.new(name: 'name')
      expect(director.save).to eq(true)
    end

    it 'ensures the name is unique' do
      Director.create(name: 'name1')
      director = Director.new(name: 'name1')
      expect(director.save).to eq(false)
    end
  end
end

require 'rails_helper'

RSpec.describe Actor, type: :model do
  context 'validations tests' do
    it 'ensures the name is present' do
      actor = Actor.new
      expect(actor.valid?).to eq(false)
    end

    it 'should be able to save actor' do
      actor = Actor.new(name: 'name')
      expect(actor.save).to eq(true)
    end

    it 'ensures the name is unique' do
      Actor.create(name: 'name1')
      actor = Actor.new(name: 'name1')
      expect(actor.save).to eq(false)
    end
  end
end

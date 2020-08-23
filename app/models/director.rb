# frozen_string_literal: true

class Director < ApplicationRecord
  has_and_belongs_to_many :films
end

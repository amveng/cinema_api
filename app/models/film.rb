# frozen_string_literal: true

class Film < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :directors
end

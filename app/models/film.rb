# frozen_string_literal: true

class Film < ApplicationRecord
  mount_uploader :image, ImageUploader

  attribute :genres
  attribute :directors
  attribute :actors

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :actors

  validates :title, presence: true
end

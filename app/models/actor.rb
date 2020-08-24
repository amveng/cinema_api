class Actor < ApplicationRecord
  has_and_belongs_to_many :films

  validates :name, uniqueness: true
end

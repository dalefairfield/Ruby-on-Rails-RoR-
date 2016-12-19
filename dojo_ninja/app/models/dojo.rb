class Dojo < ApplicationRecord
  has_many :ninjas
  validates :name, :city, :state, presence: true
end

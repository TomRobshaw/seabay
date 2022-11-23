class Listing < ApplicationRecord
  has_many :bids, dependent: :destroy
  validates :title, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 10 }
end

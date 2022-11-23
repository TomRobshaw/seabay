class Listing < ApplicationRecord
  has_many :bids, dependent: :destroy
end

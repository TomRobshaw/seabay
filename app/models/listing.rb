class Listing < ApplicationRecord
  has_many :bids, dependent: :destroy
  validates :title, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 10 }

  include PgSearch::Model
  pg_search_scope :search_by_title,
  against: [:title ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end

class Listing < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  validates :title, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 10 }


  include PgSearch::Model
  pg_search_scope :search_by_title_and_by_location,
  against: [:title, :location ],
  using: {
    tsearch: { prefix: true }
  }


  has_one_attached :image

end

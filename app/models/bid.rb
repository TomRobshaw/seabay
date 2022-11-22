class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  #after update
  # after_save :create_purchase if :accepted?

  enum :status, { pending: 0, accepted: 1, declined: 2 }

  private

  def create_purchase
    Purchase.create(bid: self)
  end
end

class Bid < ApplicationRecord
  #after update
  # after_save :create_purchase if :accepted?
  # enum :status, { pending: 0, accepted: 1, declined: 2 }
  belongs_to :listing
  private

  def create_purchase
    Purchase.create(bid: self)
  end
end

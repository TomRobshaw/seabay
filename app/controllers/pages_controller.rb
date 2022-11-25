class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # make this only allow them to view listings but not bid
  def home
    @listings = Listing.all
  end
  def your_listings
    @listings = Listing.where(user_id: current_user.id)
  end

  def your_bids
    @bids = Bid.where(user_id: current_user.id)
  end
end

class BidsController < ApplicationController
  # value
  # status
  def new
    @listing = Listing.find(params[:listing_id])
    @bid = Bid.new
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.update(bid_params)
    # @bid = bid.save
    redirect_to bid_path(@bid)
  end

  def index
    @bids = Bid.all
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @bid = Bid.new(bid_params)
    @bid.user = current_user
    @bid.listing = @listing
    # @bid.user_id = @user[:id]
    if @bid.save
      redirect_to bids_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @bid = Bid.find(params[:id])
    # @listing = Listing.find(params[:id])
    # @bid.listing = @bid
  end

  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy
    redirect_to bids_path
  end

  private

  # private params need work and need to find out why views arnt auto populating
  def bid_params
    params.require(:bid).permit(:value, :status)
  end
end

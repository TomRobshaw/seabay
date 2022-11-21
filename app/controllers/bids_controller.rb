class BidsController < ApplicationController
  # value
  # status
  def new
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
    @bid = Bid.new(bid_params)
    @bid.save
    redirect_to bids_path
  end

  def show
    @bid = Bid.find(params[:id])
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

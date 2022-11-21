class ListingsController < ApplicationController
  def index
    @listings = Listings.all
  end

  def show
    @listing = Listings.find(params[:id])
  end

  def new
    @listing = Listing.new(listing_params)
    @listing.reserve = @user_reserve
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to list_path(@listing), notice: 'list was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description)
  end
end

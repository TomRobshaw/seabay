class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]
  def index
    if params[:query].present?
      @listings = Listing.search_by_title_and_by_location(params[:query])
    else
      @listings = Listing.all
    end
  end

  def change_status
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listings_path(@listing), notice: 'listing was successfully created.'
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

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :location, :description, :price, :image)
  end
end

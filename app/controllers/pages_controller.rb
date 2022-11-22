class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # make this only allow them to view listings but not bid
  def home
  end
end

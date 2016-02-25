class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @artworks = Artwork.all
  end

  def dashboard
    @artworks = current_user.artworks
    @reservations = current_user.reservations
  end
end

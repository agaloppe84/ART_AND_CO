class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create, :new]
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def index
    @artworks = Artwork.all
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @artwork_coordinates = { lat: @artwork.latitude, lng: @artwork.longitude }
  end

  def new
    @artwork = Artwork.new
  end

  def edit
    @artwork.save
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      Rails.logger.info(@artwork.errors.full_messages)
      render :new
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to artwork_path(@artwork)
    else
      render :edit
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @artwork.destroy
    redirect_to artworks_path
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :price, :genre, :picture, :picture_cache)
  end

end

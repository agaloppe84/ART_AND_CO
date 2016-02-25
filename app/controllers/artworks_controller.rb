class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create, :new]
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new
    @artwork = Artwork.new
  end

  def edit
    @artwork.save
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
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

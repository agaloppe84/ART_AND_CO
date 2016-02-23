class ArtworksController < ApplicationController

  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  validates :name, presence: true
  validates :user_id, presence: true
  validates :genre, presence: true

  def index
    @artwork = Artwork.all
  end

  def show
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
    params.require(:artwork).permit(:name, :description, :price, :genre)
  end

end

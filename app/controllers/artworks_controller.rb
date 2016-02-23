class ArtworksController < ApplicationController
  validates :name, presence: true
  validates :user_id, presence: true
  validates :genre, presence: true
end

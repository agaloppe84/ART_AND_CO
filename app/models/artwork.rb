class Artwork < ActiveRecord::Base
  validates :name, presence: true
  validates :user, presence: true
  validates :genre, presence: true
  belongs_to :user
  has_many :reservations
  # has_many :users, through: :reservations
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :picture, PhotoUploader

  def self.genres
    ["painting", "sculpture", "photography"]
  end
end

class Artwork < ActiveRecord::Base
  validates :name, presence: true
  validates :user, presence: true
  validates :genre, presence: true
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
end

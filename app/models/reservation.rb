class Reservation < ActiveRecord::Base
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :artwork, presence: true
  validates :user, presence: true
  belongs_to :user
  belongs_to :artwork
end

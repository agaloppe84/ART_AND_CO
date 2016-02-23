class Reservation < ActiveRecord::Base
  has_one :user
  has_one :artwork
end

class ReservationsController < ApplicationController
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :artwork_id, presence: true
  validates :user_id, presence: true
end


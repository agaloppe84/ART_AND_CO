class ReservationsController < ApplicationController
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :artwork_id, presence: true
  validates :user_id, presence: true

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.save
    redirect_to reservation_path(@reservation)
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

end


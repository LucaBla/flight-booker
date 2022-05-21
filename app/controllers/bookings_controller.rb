class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  def show
  end
  
  def new
    @booking = Booking.new
    @passenger = @booking.passengers.build
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:passengers, :flight_id, :date, passengers_attributes: [:name, :email])
  end
end

class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]
  before_action :paypal_init, only: %i[ create_booking_paypal capture_booking ]
  skip_before_action :verify_authenticity_token

  def show
  end
  
  def new
    @booking = Booking.new(date: params[:date], flight_id: params[:flight_id])
    @passengers_num = params[:passengers_num]
    @passenger = @booking.passengers.build
    @flight = Flight.where(id: params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        PassengerMailer.with(passenger: @booking.passengers.first).confirmation_email.deliver
        format.html { redirect_to booking_url(@booking), notice: "" }
        format.json { render :show, status: :created, location: @booking }
      else
        @flight = Flight.where(id: @booking.flight_id)
        @passengers_num = unimportant_params[:passengers_num]
        @booking.passengers.clear
        @passenger = @booking.passengers.build
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
    params.require(:booking).permit(:flight_id, :date, passengers_attributes: [:name, :email])
  end

  def unimportant_params
    params.require(:booking).permit(:passengers_num)
  end

end

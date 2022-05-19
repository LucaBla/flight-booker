class BookingsController < ApplicationController

  private
  def booking_params
    params.require(:booking).permit(:id)
  end
end

class PassengerMailer < ApplicationMailer

  def confirmation_email
    @booking = params[:booking]
    @url = 'https://whispering-tundra-36418.herokuapp.com/flights'
    mail(to: @booking.passengers.first.email, subject: 'Your booked tickets.')
  end
end

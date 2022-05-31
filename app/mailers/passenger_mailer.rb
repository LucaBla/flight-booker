class PassengerMailer < ApplicationMailer

  def confirmation_email
    @passenger = params[:passenger]
    @booking = params[:booking]
    @url = 'https://whispering-tundra-36418.herokuapp.com/flights'
    mail(to: @passenger.email, subject: 'Your booked tickets.')
  end
end

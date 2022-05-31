class PassengerMailer < ApplicationMailer

  def confirmation_email
    @passenger = params[:passenger]
    @url = 'https://whispering-tundra-36418.herokuapp.com/flights'
    mail(to: @passenger.email, subject: 'Your booked tickets.')
  end
end

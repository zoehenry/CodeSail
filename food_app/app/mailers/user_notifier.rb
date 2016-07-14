class UserNotifier < ApplicationMailer
  def send_signup_email
    @restaurant = Restaurant.first
    mail(
      to: 'zoe.henry@yale.edu',
      from: 'potatoes@potato.spud',
      subject: 'POTATOES ARE GREAT!'
      )
  end
end

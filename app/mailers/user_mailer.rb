class UserMailer < ApplicationMailer
  default from: 'noreply@narendragarikapati.com'
 
  def contact_me(data)
    @data = data
    mail(to: "narendra99899@gmail.com", subject: 'Email from My Contact Page')
  end
end

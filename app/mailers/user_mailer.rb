class UserMailer < ApplicationMailer
  default from: 'noreply@narendragarikapati.com'
 
  def contact_me(data)
    @data = data
    mail(to: @data.email, subject: 'Email from My Contact Page')
  end
end

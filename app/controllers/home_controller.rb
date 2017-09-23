class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def send_an_email
    if params[:name].present? && params[:email].present? && params[:phone].present?
      data = Hash.new
      data[:name] = params[:name]
      data[:email] = params[:email]
      data[:phone] = params[:phone]
      data[:message] = params[:message]
      UserMailer.contact_me(data).deliver_now

      render json: {status: true, messsage: "Thanks for contacting me, I'll get back soon"}
    else
      render json: {status: false, message: "Something went wrong"}
    end
  end
end

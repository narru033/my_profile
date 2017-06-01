class HomeController < ApplicationController
  def index
  end

  def send_an_email
    if params[:name].present? && params[:email].present? && params[:phone].present?
      data = Object.new
      data.name = params[:name]
      data.email = params[:email]
      data.phone = params[:phone]
      data.message = params[:message]
      UserMailer.contact_me(data).deliver_now
    end
  end
end

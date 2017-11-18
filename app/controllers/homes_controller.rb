class HomesController < ApplicationController

  #before_action :send_mail

  def index
  end

  private

  def send_mail
    OrderMailer.order_success(details: session[:order]).deliver_now!
    OrderMailer.order_received(details: session[:order], answers: session[:answers]).deliver_now!
  end

end

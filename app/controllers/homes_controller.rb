class HomesController < ApplicationController

 #  before_action :send_mail

  def index
  end

  private

  def send_mail
    @customer = Customer.all.where(session_id: session.id).last
    @email = @customer.email
    OrderMailer.order_success(@email).deliver_now!
  end

end

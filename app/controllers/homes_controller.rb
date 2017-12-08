class HomesController < ApplicationController

  # before_action :send_mail

  def index
    @page_title = t('home.title')
    @meta_title = t('home.meta_title')
    @meta_description = t('home.meta_description')
  end

  private

  def send_mail
    # ONLY FOR TESTING PURPOSES, DO NOT USE.
    OrderMailer.order_success(details: session[:order]).deliver_now!
    OrderMailer.order_received(details: session[:order], answers: session[:answers]).deliver_now!
  end

end

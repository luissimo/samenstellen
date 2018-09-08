class HomesController < ApplicationController

  # before_action :send_mail
  # before_action :delete_discount_session, only: [:index]

  def index
    @page_title = t('home.title')
    @meta_title = t('home.meta_title')
    @meta_description = t('home.meta_description')
  end

  def dynamic_landing
    @keyword = params[:kw] ? params[:kw] : 'Matras kopen'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword.to_s + 'bij Tenzen'
  end

  def welke_matras_kopen
    @page_title = 'Welke matras kopen?'
    @meta_title = 'Welke matras kopen?'
    @meta_description = 'Welke matras kopen?'
  end

  def welke_matras_kiezen
    @page_title = 'Welke matras kiezen?'
    @meta_title = 'Welke matras kiezen?'
    @meta_description = 'Welke matras kiezen?'
  end

  private

  def send_mail
    # ONLY FOR TESTING PURPOSES, DO NOT USE.
    OrderMailer.order_success(details: session[:order]).deliver_now!
    OrderMailer.order_received(details: session[:order], answers: session[:answers]).deliver_now!
  end
end

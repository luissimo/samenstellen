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
    @keyword = 'Welke matras kopen?'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def welke_matras_kiezen
    @keyword = 'Welke matras kiezen?'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def welk_matras_past_bij_mij
    @keyword = 'Welk matras past bij mij?'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_online_bestellen
    @keyword = 'Matras online bestellen?'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_advies
    @keyword = 'Matras advies'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_bestellen
    @keyword = 'Matras bestellen'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_kopen
    @keyword = 'Matras kopen'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def beste_matras_kopen
    @keyword = 'Beste matras kopen'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def beste_matras
    @keyword = 'Beste matras'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_op_maat
    @keyword = 'Matras op maat'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def goedkoop_matras
    @keyword = 'Goedkoop matras'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def goedkope_matras
    @keyword = 'Goedkope matras'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_80x200
    @keyword = 'Matras 80x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_90x200
    @keyword = 'Matras 90x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_120x200
    @keyword = 'Matras 120x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_140x200
    @keyword = 'Matras 140x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_160x200
    @keyword = 'Matras 160x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  def matras_180x200
    @keyword = 'Matras 180x200'
    @page_title = @keyword
    @meta_title = @keyword
    @meta_description = @keyword
  end

  private

  def send_mail
    # ONLY FOR TESTING PURPOSES, DO NOT USE.
    OrderMailer.order_success(details: session[:order]).deliver_now!
    OrderMailer.order_received(details: session[:order], answers: session[:answers]).deliver_now!
  end
end

class CustomersController < ApplicationController

  include MattressPrices
  include DoubleMattressOnePrices
  include DoubleMattressTwoPrices
  include HelperConcern

  before_action :set_stripe_api_key

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params.merge({ session_id: session.id }))
    @name = session[:name]

    set_price
    case @customer.payment_method
    when "50/50"
      @price = @price / 2
    else
      @price = @price
    end

    session[:price] = @price

    respond_to do |format|
      if @customer.save
        create_stripe_source
        session[:stripe_source_id] = @payment[:id]
        format.html { redirect_to @payment[:redirect][:url] }
      else
        format.html { render :new }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  def success
    begin
      process_payment
    rescue Stripe::InvalidRequestError => e
      redirect_to root_url
    end

    case session[:status]
    when 'success'
      @status = "Je bestelling is in goede orde ontvangen!"
    else
      @status = "Er is iets misgegaan met de betaling, probeer het later nogmaals."
    end
  end

  def process_payment
    @source_status = Stripe::Source.retrieve(params[:source])[:status]

    if @source_status.eql?('chargeable')
     session[:status] = 'pending'
     Stripe::Charge.create({
       amount: session[:price],
       currency: 'eur',
       source: session[:stripe_source_id]
     })
     process_payment
     # if source[:status] == 'consumed' payment is authorized otherwise it gives source[:status] == 'failed'
    elsif @source_status.eql?('consumed')
     session[:status] = 'success'
    else
     session[:status] = 'failed'
    end
  end

  private

  def create_stripe_source
    @payment = Stripe::Source.create(
      type: "ideal",
      amount: session[:price],
      currency: 'eur',
      owner: {
        name: @name.to_s,
      },
      redirect: {
        return_url: bedankt_url
      }
    )
  end

  def customer_params
    params.require(:customer).permit(:id, :session_id, :first_name, :last_name, :address, :address_addition,
                                     :zip_code, :city, :phone, :email, :floor, :elevator, :address_ship,
                                     :address_addition_ship, :zip_code_ship, :city_ship, :comment, :payment_method)
  end

  def set_price
    case session[:flow]
    when 'mattress'
      calculate_price
    when 'double_mattress_one'
      calculate_price_double_mattress_one
    when 'double_mattress_two'
      calculate_price_double_mattress_two
    end
  end

  def set_stripe_api_key
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  end
end

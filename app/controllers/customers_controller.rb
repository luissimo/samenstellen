class CustomersController < ApplicationController

  before_action :set_stripe_api_key

	include MattressPrices

  def new
  	@customer = Customer.new
  	#@customer.build_billing_address
  	#@customer.billing_address.build
  	#@customer.build.shipping_address
  end

  def create
  	@customer = Customer.new(customer_params.merge({ session_id: session.id }))
  	@name = Mattress.all.where(session_id: session.id).last.name
		calculate_price
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
    process_payment
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
 		params.require(:customer).permit(:id, :session_id, :comment,
		billing_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
																 :zip_code, :city, :phone, :email, :floor, :elevator],
		shipping_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
                                 :zip_code, :city, :phone, :email, :floor, :elevator])
 	end

  def set_stripe_api_key
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  end
end

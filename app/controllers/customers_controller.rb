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
    @name = session[:answers][:name]

    set_price
    case @customer.payment_method
    when "50/50"
      @price = @price / 2
    else
      @price = @price
    end

    session[:order] = {
      type: session[:flow],
      first_name: params[:customer][:first_name],
      last_name: params[:customer][:last_name],
      phone: params[:customer][:phone],
      email: params[:customer][:email],
      address: params[:customer][:address],
      address_addition: params[:customer][:address_addition],
      zip_code: params[:customer][:zip_code],
      city: params[:customer][:city],
      address_ship: params[:customer][:address_ship],
      address_addition_ship: params[:customer][:address_addition_ship],
      zip_code_ship: params[:customer][:zip_code_ship],
      city_ship: params[:customer][:city_ship],
      floor: params[:customer][:floor],
      elevator: params[:customer][:elevator],
      comment: params[:customer][:comment],
      payment_method: params[:customer][:payment_method],
      price: @price,
      order_number: create_order_number,
      answers: session[:answers],
      mattress: session[:mattress],
      topper: session[:topper],
      mattress2: session[:mattress2],
      topper2: session[:topper2]
    }

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
      return redirect_to root_url
    rescue
      return redirect_to root_url
    end

    case session[:status]
    when 'success'
      @title = "Bedankt voor je bestelling!"
      @explanation = "Je bestelling is in goede orde ontvangen. <br> We gaan meteen aan de slag om je bestelling verzendklaar te maken.<br><br> Je kunt dit venster sluiten.".html_safe

      OrderMailer.order_success(details: session[:order]).deliver_now! if session[:order][:email]
      OrderMailer.order_received(details: session[:order], answers: session[:answers]).deliver_now if session[:order] && session[:answers]

      reset_session
     else
      @title = "Er is iets misgegaan met de betaling."
      @explanation = "Je betaling is niet gelukt, probeer het later nogmaals."
      reset_session
    end
  end

  def process_payment
    @source_status = Stripe::Source.retrieve(params[:source])[:status]

    if @source_status.eql?('chargeable')
     session[:status] = 'pending'
     Stripe::Charge.create({
       amount: session[:order][:price],
       currency: 'eur',
       source: session[:stripe_source_id],
       metadata: {
         first_name: session[:order][:first_name],
         last_name: session[:order][:last_name],
         phone: session[:order][:phone_name],
         email: session[:order][:email],
         address: session[:order][:address],
         address_addition: session[:order][:address_addition],
         zip_code: session[:order][:zip_code],
         city: session[:order][:city],
         address_ship: session[:order][:address_ship],
         address_addition_ship: session[:order][:address_addition_ship],
         zip_code_ship: session[:order][:zip_code_ship],
         city_ship: session[:order][:city_ship],
         floor: session[:order][:floor],
         elevator: session[:order][:elevator],
         comment: session[:order][:comment],
         payment_method: session[:order][:payment_method],
         order_number: session[:order][:order_number]
       }
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
      amount: session[:order][:price],
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

  def create_order_number
    time = Time.now.strftime("%d%m%Y")
    random_number = SecureRandom.uuid.last(4).upcase
    [time, random_number].join("-")
  end

  def set_stripe_api_key
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  end
end

class CustomersController < ApplicationController

  protect_from_forgery :except => :webhook

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
    case session[:status]
    when 'pending'
      @status = "Je bestelling wordt nog verwerkt.."
    when 'success'
      @status = "Je bestelling is in goede orde ontvangen!"
    else
      @status = "Stel eerst je product samen!"
    end
  end

  def webhook
    data_json_type = params[:type]

    if data_json_type == "source.chargeable"
      create_stripe_charge
      session[:status] = "pending"
    end

    if data_json_type == "charge.succeeded"
      session[:status] = "success"
    end
    render status: 200
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

  def create_stripe_charge
    Stripe::Charge.create({
      amount: session[:price],
      currency: 'eur',
      source: session[:stripe_source_id]
    })
  end

 	def customer_params
 		params.require(:customer).permit(:id, :session_id, :comment,
		billing_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
																 :zip_code, :city, :phone, :email, :floor, :elevator],
		shipping_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
                                 :zip_code, :city, :phone, :email, :floor, :elevator])
 	end
end

class CustomersController < ApplicationController

  protect_from_forgery :except => :success

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

  	respond_to do |format|
      if @customer.save
      	set_stripe_api_key
        create_stripe_source
        format.html { redirect_to @payment[:redirect][:url] }
      else
        format.html { render :new }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  def success
    event_json = JSON.parse(request.body.read)
    status 200
    if source.chargeable
      calculate_price
      set_stripe_api_key
      @status = "Bedankt voor je bestelling!"
    else
      @status = 'Jammer, de betaling is mislukt, wij hopen jou in de toekomst alsnog te kunnen helpen!'
   end
  end

 	private

  def create_stripe_source
    @payment = Stripe::Source.create(
      type: "ideal",
      amount: @price,
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
    @charge = Stripe::Charge.create({
      amount: @price,
      currency: 'eur',
      source: @payment[:id]
    })
  end


  def set_stripe_api_key
    Stripe.api_key = "pk_test_vOGZ3ipJUgNexw21Y5CjmK7U"
  end

 	def customer_params
 		params.require(:customer).permit(:id, :session_id, :comment,
 																			billing_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
 																																	 :zip_code, :city, :phone, :email, :floor, :elevator],
 																			shipping_address_attributes: [:id, :first_name, :last_name, :address, :address_addition,
 																																		:zip_code, :city, :phone, :email, :floor, :elevator])
 	end


end

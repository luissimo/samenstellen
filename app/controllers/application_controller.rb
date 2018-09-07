class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, except: [:kortingscode_checken]

  def redirect_to_root_if_object_nil(object)
    redirect_to root_url if object.nil?
  end

  def delete_discount_session
    session.delete(:kortingscode) if session[:kortingscode]
  end

  def kortingscode_checken
    delete_discount_session
    if %w(tenzen10 speciaalvoormij).include? session[:kortingscode]
      flash[:notice] = "Je hebt al een lopende korting. Je kunt geen kortingen combineren. De prijs hierboven is de nieuwe prijs inclusief korting."
      respond_to do |format|
        format.js
        format.html { return redirect_to return_discount_url }
      end
    end

    # flash[:notice] = "Dit is geen actieve kortingscode."
    # respond_to do |format|
    #   format.js
    #   format.html { return redirect_to return_discount_url }
    # end

    case params[:kortingscode].downcase
    when 'speciaalvoormij'
      session[:kortingscode] = 'speciaalvoormij'
      flash[:notice] = "Gefeliciteerd, hij is nu gratis!"
      respond_to do |format|
        format.js
        format.html { redirect_to return_discount_url }
      end
    when 'tenzen10'
      session[:kortingscode] = 'tenzen10'
      flash[:notice] = "Gefeliciteerd, je korting is doorberekend!"
      respond_to do |format|
        format.js
        format.html { redirect_to return_discount_url }
      end
    else
      flash[:notice] = "Je hebt een onjuiste code ingevoerd."
      respond_to do |format|
        format.js
        format.html { redirect_to return_discount_url }
      end
    end
  end

  def set_kortingscode_price
    # kortingscode verwerking
    case session[:kortingscode]
    when 'tenzen10'
      @price = (@price * 0.9).to_i
    when 'speciaalvoormij'
      @price = 0000
    else
      @price = @price
    end
  end

  def asset_not_found
    head 404
  end

  private

  def return_discount_url
    case session[:flow]
    when "mattress"
      bestellen_eenpersoons_resultaat_url
    when "double_mattress_one"
      bestellen_tweepersoons_solo_resultaat_url
    when "double_mattress_two"
      bestellen_tweepersoons_duo_resultaat_url
    end
  end
end

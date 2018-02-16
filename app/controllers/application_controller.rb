class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, except: [:kortingscode_checken]

  include MattressPrices

  def redirect_to_root_if_object_nil(object)
    redirect_to root_url if object.nil?
  end

  def kortingscode_checken
    # if session[:kortingscode] == 'valentijn20' || session[:kortingscode] == 'larissa'
    #   flash[:notice] = "Je hebt al een lopende korting. Je kunt geen kortingen combineren. De prijs hierboven is de nieuwe prijs inclusief korting."
    #   respond_to do |format|
    #     format.js
    #     format.html { return redirect_to return_discount_url }
    #   end
    # end

    flash[:notice] = "Dit is geen actieve kortingscode."
    respond_to do |format|
      format.js
      format.html { return redirect_to return_discount_url }
    end

    # case params[:kortingscode].downcase
    # when 'valentijn20'
    #   session[:kortingscode] = 'valentijn20'
    #   flash[:notice] = "Gefeliciteerd, je korting is doorberekend!"
    #   respond_to do |format|
    #     format.js
    #     format.html { redirect_to return_discount_url }
    #   end
    # when 'larissa'
    #   session[:kortingscode] = 'larissa' unless !winning_sizes
    #   flash[:notice] = "Gefeliciteerd, je krijgt dit matras geheel gratis!" if winning_sizes
    #   flash[:notice] = "Deze maat valt niet onder win-actie, kies een andere maat!" if !winning_sizes
    #   respond_to do |format|
    #     format.js
    #     format.html { redirect_to return_discount_url }
    #   end
    # else
    #   flash[:notice] = "Je hebt een onjuiste code ingevoerd."
    #   respond_to do |format|
    #     format.js
    #     format.html { redirect_to return_discount_url }
    #   end
    # end
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

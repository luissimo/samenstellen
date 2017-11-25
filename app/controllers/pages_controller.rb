class PagesController < ApplicationController

  def over_tenzen; end #

  def vragen; end #

  def privacy_beleid; end #

  def garanties; end #

  def cookie_beleid; end #

  def retourneren; end #

  def algemene_voorwaarden_ingewikkeld; end

  def algemene_voorwaarden; end

  def bestellen; end

  def solo_or_duo; end

  def contact
    @contact_form = ContactForm.new
  end

  def create_contact
    @contact_form = ContactForm.new(contact_form_params.merge({ session_id: session.id }))
    @contact_form.request = request

    respond_to do |format|
      if @contact_form.deliver
        format.html { redirect_to contact_url, notice: "Je bericht is verstuurd. <br> Wij nemen zo spoedig mogelijk contact met je op.".html_safe }
      else
        format.html { render :contact, alert: "Je hebt niet alle velden ingevuld. Probeer het nogmaals." }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:id, :session_id, :name, :email, :subject, :about, :message)
  end
end

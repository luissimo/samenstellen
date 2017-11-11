class PagesController < ApplicationController

  def over_ons; end #

  def faq; end #

  def privacy_policy; end #

  def garanties; end #

  def cookie_policy; end #

  def retourneren; end #

  def algemene_voorwaarden; end

  def algemene_voorwaarden_simpel; end

  def contact
    @contact_form = ContactForm.new
  end

  def create_contact
    @contact_form = ContactForm.new(contact_form_params.merge({ session_id: session.id }))
    @contact_form.request = request

    respond_to do |format|
      if @contact_form.deliver
        format.html { redirect_to contact_url }
      else
        format.html { render :contact }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:id, :session_id, :name, :email, :subject, :about, :message)
  end
end
